fun! tmuxline#presets#crosshair#get()
  let bar = tmuxline#new()

  call bar.left.add('a', '#S')
  "call bar.left.add_left_sep()
  "call bar.left.add('b', '#(uptime | cut -d " " -f 4,5 | cut -d "," -f 1)')

  call bar.right.add('x', '%a %b %d %H:%M')
  call bar.right.add_right_sep()
  call bar.right.add('y', '#(whoami)@#h')
  call bar.right.add_right_sep()
  call bar.right.add('z', '#(uptime | cut -d " " -f 4,5 | cut -d "," -f 1)')

  call bar.win.add('win', '(#I#F)#W')

  call bar.cwin.add_left_sep()
  call bar.cwin.add('cwin', '(#I#F)#W')
  call bar.cwin.add('cwin', '#P')
  call bar.cwin.add_right_sep()

  let bar.options['status-justify'] = 'centre'
  let bar.win_options['window-status-activity-attr'] = 'none'
  let bar.win_options['window-status-separator'] = ' '

  return bar
endfun

