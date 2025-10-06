vim.cmd [[
  autocmd BufEnter * silent! call CocActionAsync('diagnosticRefresh')
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gr <Plug>(coc-references)
  nmap <silent> K :call CocActionAsync('doHover')<CR>
  nmap <silent> <leader>d :TroubleToggle document_diagnostics<CR>
  " Confirm selected completion item
  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
]]
