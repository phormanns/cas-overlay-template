#java -agentlib:native-image-agent=experimental-class-loader-support,config-output-dir=./src/main/resources/META-INF/native-image2 -jar build/libs/cas.jar
./gradlew clean build
java -agentlib:native-image-agent=config-merge-dir=./src/main/resources/META-INF/native-image,config-write-period-secs=300,config-write-initial-delay-secs=5 -jar build/libs/cas.jar