function wifi --wraps='wpa_cli select_network ' --description 'alias wifi wpa_cli select_network '
  wpa_cli select_network  $argv
        
end
