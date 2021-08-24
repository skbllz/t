" vim-go.vim
" Aug 21

filetype plugin indent on

set autowrite

" syntax highlighting
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_operators = 1
let g:go_highlight_types = 1

" auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" status line types/signatures
let g:go_auto_type_info = 1

" disable all linters as that is taken care of by coc.nvim
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []

" don't jump to errors after metalinter is invoked
let g:go_jump_to_error = 0

" automatically highlight variable your cursor is on
let g:go_auto_sameids = 0

" disabling vim-go mapping 'gd' for go to definition
let g:go_def_mapping_enabled = 0

" END
