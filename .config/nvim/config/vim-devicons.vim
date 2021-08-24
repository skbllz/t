" vim-devicons.vim
" aug 21

" " loading the plugin
" let g:webdevicons_enable = 1

" " adding the flags to NERDTree
" let g:webdevicons_enable_nerdtree = 1

" " adding to vim-airline's tabline
" let g:webdevicons_enable_airline_tabline = 1

" " adding to vim-airline's statusline
" let g:webdevicons_enable_airline_statusline = 1

" " use double-width(1) or single-width(0) glyphs
" " only manipulates padding, has no effect on terminal or set(guifont) font
" let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 0

" " the amount of space to use after the glyph character (default ' ')
" let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

" " Force extra padding in NERDTree so that the filetype icons line up vertically
" let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" " The amount of space to use after the glyph character in vim-airline tabline(default '')
" let g:WebDevIconsTabAirLineAfterGlyphPadding = ' '

" " The amount of space to use before the glyph character in vim-airline tabline(default ' ')
" let g:WebDevIconsTabAirLineBeforeGlyphPadding = ' '


" " change the default character when no match found
" let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'

" " set a byte character marker (BOM) utf-8 symbol when retrieving file encoding
" " disabled by default with no value
" let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = ''

" " enable folder/directory glyph flag (disabled by default with 0)
" let g:WebDevIconsUnicodeDecorateFolderNodes = 0

" " enable open and close folder/directory glyph flags (disabled by default with 0)
" let g:DevIconsEnableFoldersOpenClose = 1

" " enable pattern matching glyphs on folder/directory (enabled by default with 1)
" let g:DevIconsEnableFolderPatternMatching = 1

" " enable file extension pattern matching glyphs on folder/directory (disabled by default with 0)
" let g:DevIconsEnableFolderExtensionPatternMatching = 0

" " enable custom folder/directory glyph exact matching
" " (enabled by default when g:WebDevIconsUnicodeDecorateFolderNodes is set to 1)
" let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1

" " change the default folder/directory glyph/icon
" let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = 'ƛ'

" " change the default open folder/directory glyph/icon (default is '')
" " let g:DevIconsDefaultFolderOpenSymbol = 'ƛ'

" " change the default dictionary mappings for file extension matches

" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = 'ƛ'

" " change the default dictionary mappings for exact file node matches

" let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['MyReallyCoolFile.okay'] = 'ƛ'

" " add or override individual additional filetypes

" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['myext'] = 'ƛ'

" " add or override pattern matches for filetypes
" " these take precedence over the file extensions

" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*jquery.*\.js$'] = 'ƛ'
