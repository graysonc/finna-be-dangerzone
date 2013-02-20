setlocal ts=4
setlocal sts=4
setlocal sw=4
setlocal expandtab

" Eclim mappings.

"\ji:  Try to organize imports (clean unused, add needed) for the whole file
nnoremap <silent> <buffer> <leader>ji :JavaImportOrganize<cr>

"\jd: Try to search for the word under the cursor.
nnoremap <silent> <buffer> <leader>jd :JavaDocSearch -x declarations<cr>

"\js: Try a context-sensitive search for the element under the cursor.
nnoremap <silent> <buffer> <leader>js :JavaSearchContext<cr>

"\jc: Try to create a constructor for the current class based on the
" highlighted fields. If no fields highlighted, create a blank constructor.
vnoremap <silent> <buffer> <leader>jc :JavaConstructor<cr>
nnoremap <silent> <buffer> <leader>jc :JavaConstructor<cr>

"\jg: Try to create a getter and setter for the highlighted fields, or
" if none are highlighted, the one underneath the cursor.
vnoremap <silent> <buffer> <leader>jg :JavaGetSet<cr>
nnoremap <silent> <buffer> <leader>jg :JavaGetSet<cr>

"\jm: Show a list of the available overrideable/implementable methods and
" let you choose from them.
nnoremap <silent> <buffer> <leader>jm :JavaImpl<cr>

"\jb: Build the project.
nnoremap <buffer> <leader>jb :ProjectBuild<cr>

"\jt: Display the project tree for the current project.
nnoremap <buffer> <leader>jt :ProjectTree<cr>
