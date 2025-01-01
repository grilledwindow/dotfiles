function mvnsbrun --wraps='mvn spring-boot:run -Dspring.profiles.active=local' --description 'alias mvnsbrun=mvn spring-boot:run -Dspring.profiles.active=local'
  mvn spring-boot:run -Dspring.profiles.active=local $argv
        
end
