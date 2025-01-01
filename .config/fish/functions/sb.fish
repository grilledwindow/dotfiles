function sb --wraps='npx supabase' --wraps='sudo npx supabase' --description 'alias sb=sudo npx supabase'
  sudo npx supabase $argv
        
end
