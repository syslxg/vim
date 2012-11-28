" Vim syntax file

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" A bunch of useful C keywords
syn keyword	bLabel		INFO DEBUG WARN
syn keyword	bWarning	WARN
syn keyword	bError		fail failure failing error exception
syn keyword     bRed            ERROR busy 
syn keyword     bBlue           RECEIVED SENT
syn keyword     bMethod         Message get_task get_state start stop running stopped fetch_logs ping pong apply compile_package
syn match bRed display "^E,"
syn match bBlue  '([a-f0-9]{4,12}-){4}[a-f0-9]+'
syn match bBlue  'method.*(get_task\|stop)'

hi def link bMethod bRed



hi bLabel ctermfg=Green
hi bWarning ctermfg=Yellow
hi bRed ctermfg=Red
hi bBlue ctermfg=Blue
hi bError term=reverse ctermfg=White ctermbg=Red

