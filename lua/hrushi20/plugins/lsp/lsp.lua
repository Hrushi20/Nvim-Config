vim.cmd [[
  autocmd BufEnter * silent! call CocActionAsync('diagnosticRefresh')
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gr <Plug>(coc-references)
  nmap <silent> K :call CocActionAsync('doHover')<CR>
  nmap <silent> <leader>d :TroubleToggle document_diagnostics<CR>
  " Navigate completion popup menu
  inoremap <silent><expr> <Tab>   coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
  inoremap <silent><expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

  " Confirm selection with Enter
  inoremap <silent><expr> <CR>    coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
]]

