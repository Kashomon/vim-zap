"" Arguments for running a command

if !exists('s:usable_shell')
  let s:usable_shell = '\v^/bin/sh$'
endif

""
" Executes a zap command with {arguments}.
function! zap#Run(cmd) abort
  echomsg 'running command ' string(a:cmd)

  let show_errors = 0
  let output = maktaba#syscall#Create(a:cmd).Call(l:show_errors)


  " let l:stderr = system(l:full_cmd)
  echomsg "stdout " output.stdout
  echomsg "stderrs " output.stderr
  " let l:error_file = tempname()
  " echo l:error_file

  " let l:full_cmd = printf('%s 2> %s', a:cmd, l:error_file)
  " echo l:full_cmd
  " let let

  " let l:out
endfunction

""
" Executes a zap command with {arguments}.
function! zap#RunAsync(args) abort
  echomsg 'running async command ' string(a:args)
endfunction

""
" Completions for the :Zap command.
function! zap#CompletionList(unused_arg, line, pos) abort
  return []
endfunction
