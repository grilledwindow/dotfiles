function mvnbld --wraps='mvn install -DskipTests' --description 'alias mvnbld=mvn install -DskipTests'
  mvn install -DskipTests $argv
        
end
