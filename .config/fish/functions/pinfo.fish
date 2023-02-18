function pinfo --wraps='sudo lshw' --description 'alias pinfo=sudo lshw'
  sudo lshw $argv; 
end
