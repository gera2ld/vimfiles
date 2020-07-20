#!/usr/bin/env python3
import os
import sys
import shutil
import subprocess

root = os.path.abspath(os.path.dirname(__file__))
# Vim in Windows does not support `\\`
root = root.replace('\\', '/')
vim_exe = None

def write_vimrc():
    open('vimrc', 'w').write(f'''\
" This file is created automatically by github:gera2ld/vimfiles.
" Please do not edit it.
" Edit `~/.vimrc.local` instead for custom configurations.

se rtp+={root}

ru lib/index.vim
''')

def symlink_force(src, dst):
    try:
        os.remove(dst)
    except FileNotFoundError:
        pass
    os.symlink(src, dst)

def install_for_nvim():
    exe = shutil.which('nvim')
    if exe is None:
        print('NeoVim is not found')
        return
    global vim_exe
    if vim_exe is None:
        vim_exe = exe
    print('Install for NeoVim...')
    config_dir = os.path.expanduser('~/AppData/Local/nvim' if sys.platform == 'win32' else '~/.config/nvim')
    os.makedirs(config_dir, exist_ok=True)
    symlink_force(os.path.join(root, 'vimrc'), os.path.join(config_dir, 'init.vim'))
    symlink_force(os.path.join(root, 'lib/coc-settings.json'), os.path.join(config_dir, 'coc-settings.json'))

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
    symlink_force(os.path.join(root, 'vimrc'), os.path.expanduser('~/.vimrc'))
    symlink_force(os.path.join(root, 'lib/coc-settings.json'), os.path.join(config_dir, 'coc-settings.json'))

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
    subprocess.run([
      vim_exe,
      '+CocInstall -sync'
      ' coc-css'
      ' coc-deno'
      ' coc-emmet'
      ' coc-eslint'
      ' coc-git'
      ' coc-highlight'
      ' coc-html'
      ' coc-json'
      ' coc-lists'
      ' coc-markmap'
      ' coc-pairs'
      ' coc-python'
      ' coc-snippets'
      ' coc-tsserver'
      ' coc-vetur'
      ' coc-yank'
      ' coc-svelte'
      ' coc-bookmark'
      ,
      '+qall',
    ], check=True)

if __name__ == '__main__':
    write_vimrc()
    install_for_nvim()
    install_for_vim()
    install_plugins()
