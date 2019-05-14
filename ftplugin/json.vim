" JSON beautify and uglify via Python
" Author: Gerald <i@gerald.top>

if has('python3')
  py3 << END
import sys
import json
from collections import OrderedDict
import vim

def parse_json():
    buffer = vim.current.buffer
    content = '\n'.join(buffer)
    return json.loads(content, object_pairs_hook=OrderedDict)

def json_beautify():
    data = parse_json()
    vim.current.buffer[:] = json.dumps(data, ensure_ascii=False, indent=2).split('\n')

def json_compact():
    data = parse_json()
    vim.current.buffer[:] = json.dumps(data, ensure_ascii=False, separators=(',',':')).split('\n')
END

  nmap <buffer> <LocalLeader>jb :py3 json_beautify()<CR>
  nmap <buffer> <LocalLeader>jc :py3 json_compact()<CR>
en
