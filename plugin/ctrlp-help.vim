" ctrlp-help - CtrlP extension for vim help tags
" Version: 0.0.1
" Author: zeero <zeero26@gmail.com>

if exists('g:loaded_vim_ctrlp_help')
  finish
endif
let g:loaded_vim_ctrlp_help = 1

let s:save_cpo = &cpo
set cpo&vim

" Variables
if !exists('g:ctrlp_help_split_direction')
  let g:ctrlp_help_split_direction = 'botright'
endif
if !exists('g:ctrlp_help_vsplit_width')
  let g:ctrlp_help_vsplit_width = 79
endif

" Commands
command! -bar CtrlPHelp call ctrlp#init(ctrlp#help#id())

" Keymaps


let &cpo = s:save_cpo
unlet s:save_cpo
