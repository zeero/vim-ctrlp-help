" ctrlp-help - CtrlP extension for vim help tags

if exists('g:loaded_vim_ctrlp_help')
  finish
endif
let g:loaded_vim_ctrlp_help = 1

let s:save_cpo = &cpo
set cpo&vim

" Variables
if !exists('g:ctrlp_help_default_mode')
  let g:ctrlp_help_default_mode = 'e'
endif
if !exists('g:ctrlp_help_vsplit_direction')
  let g:ctrlp_help_vsplit_direction = 'botright'
endif
if !exists('g:ctrlp_help_vsplit_width')
  let g:ctrlp_help_vsplit_width = 79
endif

" Commands
command! -bar CtrlPHelp call ctrlp#init(ctrlp#help#id())

" Keymaps


let &cpo = s:save_cpo
unlet s:save_cpo
