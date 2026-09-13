function whatsapp --wraps='python ~/xap/apps/zapzap/run.py dev' --wraps='cd ~/xap/apps/zapzap && python run.py dev' --description 'alias whatsapp cd ~/xap/apps/zapzap && python run.py dev'
    cd ~/xap/apps/zapzap && python run.py dev $argv
end
