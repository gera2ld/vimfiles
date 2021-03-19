#!/usr/bin/env python3
import os
import sys
import json
import shutil
import subprocess

# Vim in Windows does not support `\\`
def normalize_path(path):
    return path.replace('\\', '/')

is_win = sys.platform == 'win32'
root = normalize_path(os.path.abspath(os.path.dirname(__file__)))
config_root = normalize_path(os.path.expanduser('~/AppData/Local' if is_win else '~/.config'))
vim_exe = None

def write_vimrc():
    open('vimrc', 'w').write(f'''\
" This file is created automatically by github:gera2ld/vimfiles.
" Please do not edit it.
" Edit `~/.vimrc.local` instead for custom configurations.

se rtp+={root}

ru lib/index.vim
''')

link = os.link if is_win else os.symlink
def link_force(src, dst):
    try:
        os.remove(dst)
    except FileNotFoundError:
        pass
    link(src, dst)

def install_for_nvim():
    exe = shutil.which('nvim')
    if exe is None:
        print('NeoVim is not found')
        return
    global vim_exe
    if vim_exe is None:
        vim_exe = exe
    print('Install for NeoVim...')
    config_dir = os.path.join(config_root, 'nvim')
    os.makedirs(config_dir, exist_ok=True)
    link_force(os.path.join(root, 'vimrc'), os.path.join(config_dir, 'init.vim'))
    link_force(os.path.join(root, 'lib/coc-settings.json'), os.path.join(config_dir, 'coc-settings.json'))

def install_for_vim():
    exe = shutil.which('vim')
    if exe is None:
        print('Vim is not found')
        return
    global vim_exe
    if vim_exe is None:
        vim_exe = exe
    config_dir = os.path.expanduser('~/.vim')
    os.makedirs(config_dir, exist_ok=True)
    print('Install for Vim...')
    link_force(os.path.join(root, 'vimrc'), os.path.expanduser('~/.vimrc'))
    link_force(os.path.join(root, 'lib/coc-settings.json'), os.path.join(config_dir, 'coc-settings.json'))

def install_plugins():
    if vim_exe is None:
        print('Neither NeoVim nor Vim is found')
        return
    print('Install plugins...')
    subprocess.run([
        'curl',
        '-fLo',
        f'{root}/autoload/plug.vim.download',
        '--create-dirs',
        'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim',
    ], check=True)
    os.replace(os.path.join(root, 'autoload/plug.vim.download'), os.path.join(root, 'autoload/plug.vim'))
    # Install Vim plugins
    subprocess.run([
      vim_exe,
      '+PlugInstall',
      '+qall',
    ], check=True)
    # Install Coc plugins
    print('Install Coc plugins...')
    ext_dir = os.path.join(root, 'coc/extensions')
    os.makedirs(ext_dir, exist_ok=True)
    pkg_file = os.path.join(ext_dir, 'package.json')
    try:
        pkg = json.load(open(pkg_file))
    except:
        pkg = {}
    pkg_dependencies = pkg.get('dependencies', {})
    dependencies = {}
    for dep in [
        'coc-css',
        # 'coc-deno',
        'coc-emmet',
        'coc-eslint',
        'coc-floaterm',
        'coc-format-json',
        'coc-git',
        'coc-highlight',
        'coc-html',
        'coc-jest',
        'coc-json',
        'coc-lists',
        'coc-markmap',
        'coc-pairs',
        'coc-pyright',
        'coc-reveal',
        'coc-rls',
        'coc-snippets',
        'coc-svelte',
        'coc-tsserver',
        'coc-vetur',
        'coc-yank',
    ]:
        dependencies[dep] = pkg_dependencies.get(dep, '>=0.0.0')
    pkg['dependencies'] = dependencies
    json.dump(pkg, open(pkg_file, 'w'))
    npm_exe = shutil.which('npm')
    npx_exe = shutil.which('npx')
    if npm_exe is None or npx_exe is None:
        print('npm or npx is not found')
        return
    subprocess.run([
        npx_exe,
        'npm-check-updates',
        '-u',
    ], check=True, cwd=ext_dir)
    subprocess.run([
        npm_exe,
        'install',
        '--global-style',
        '--ignore-scripts',
        '--no-bin-links',
        '--no-package-lock',
        '--only=prod',
    ], check=True, cwd=ext_dir)

if __name__ == '__main__':
    write_vimrc()
    install_for_nvim()
    install_for_vim()
    install_plugins()
