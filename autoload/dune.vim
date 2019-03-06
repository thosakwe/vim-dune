function! dune#build(...)
  " Create a separate window.
  " We'll use it to print the dune output.
  new
  set modifiable

  " Run dune, and dump the output.
  execute "read !dune build " + join(a:000)
  set nomodifiable
endfunction
