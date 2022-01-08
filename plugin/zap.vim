""
" @usage [command] [target_or_flag...]
" Invokes command in the foreground.
"
" Supports tab completion.
command! -nargs=* -complete=customlist,zap#CompletionList Zap
  \ call zap#Run([<q-args>])

""
" @usage [command] [target_or_flag...]
" Invokes command in the background asynchronouly.
"
" Supports tab completion.
command! -nargs=* -complete=customlist,zap#CompletionList ZapAsync
  \ call zap#RunAsync([<q-args>])
