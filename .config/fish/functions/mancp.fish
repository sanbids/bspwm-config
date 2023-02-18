function mancp --wraps='man -P "col -b | pbcopy"' --description 'alias mancp=man -P "col -b | pbcopy"'
  man -P "col -b | pbcopy" $argv; 
end
