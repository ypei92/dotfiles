fun! tmuxline#presets#ypei_minimal#get()

  " tmux defaults:
  " status-right %R
  " status-left #S
  " windows #I #W

  return tmuxline#util#create_line_from_hash({
        \ 'a': '#S',
        \ 'win': '#F#I: #W',
        \ 'cwin': '#F#I: #W #P',
        \ 'x': '%a %b %d %H:%M',
        \ 'y': '#(whoami)@#h',
        \ 'z': '#(uptime | cut -d " " -f 4,5 | cut -d "," -f 1)',
        \ 'options': {
        \'status-justify': 'left'}
        \})

  return bar
endfun
