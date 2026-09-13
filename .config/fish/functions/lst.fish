function lst --wraps='ls -l | grep "$(date +%b\\ %d)"' --description 'alias lst ls -l | grep "$(date +%b\\ %d)"'
    ls -l | grep "$(date +%b\ %d)" $argv
end
