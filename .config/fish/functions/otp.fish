function otp --wraps='otpclient-cli' --description='gets otp'
    set -l cmd ""

    if [ "$argv[1]" = "github" ]
        set cmd "otpclient-cli --show --issuer github"
    else if [ "$argv[1]" = "sutd" ]
        set cmd "otpclient-cli --show --account 1010545"
    end

    if test "$cmd" = ""
        otpclient-cli --list
        return 1
    end
        
    echo -n "Enter DB Password: ";
    set -l otp (tail -1 (eval "$cmd" | psub) | grep -Eo '[0-9]{6}' | tr -d '\n')
    echo $otp
    echo -n $otp | xclip -sel clipboard
end

