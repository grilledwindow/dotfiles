function gcsm --wraps='git -S -m' --wraps='git commit -S -m' --description 'alias gcsm=git commit -S -m'
  git commit -S -m $argv
        
end
