function networks --wraps='wpa_cli list_networks' --description 'alias networks wpa_cli list_networks'
  wpa_cli list_networks $argv
        
end
