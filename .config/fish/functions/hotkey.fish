function hotkey --wraps='=nvim .config/bspwm/sxhkdrc' --wraps='nvim .config/bspwm/sxhkdrc' --wraps='lvim ~/.config/bspwm/sxhkdrc' --description 'alias hotkey=lvim ~/.config/bspwm/sxhkdrc'
  lvim ~/.config/bspwm/sxhkdrc $argv; 
end
