" arduino.vim
" may 21
" https://laptrinhx.com/vim-plugin-for-compiling-and-uploading-arduino-sketches-2598288517/

" cli
let g:arduino_use_cli = 1
" airline
" autocmd BufNewFile,BufRead *.ino let g:airline_section_x='%{MyStatusLine()}'
" easy of use
nnoremap <buffer> <leader>am :ArduinoVerify<CR>
nnoremap <buffer> <leader>au :ArduinoUpload<CR>
nnoremap <buffer> <leader>ad :ArduinoUploadAndSerial<CR>
nnoremap <buffer> <leader>ab :ArduinoChooseBoard<CR>
nnoremap <buffer> <leader>ap :ArduinoChooseProgrammer<CR>
" board type in status line
" my_file.ino [arduino:avr:uno] [arduino:usbtinyisp] (/dev/ttyACM0:9600)
" function! MyStatusLine()
"   let port = arduino#GetPort()
"   let line = '%f [' . g:arduino_board . '] [' . g:arduino_programmer . ']'
"   if !empty(port)
"     let line = line . ' (' . port . ':' . g:arduino_serial_baud . ')'
"   endif
"   return line
" endfunction
" setl statusline=%!MyStatusLine()
