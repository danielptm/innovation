### How to start the project
Run `docker build . --tag innovation`
Run `docker-compose up`

###### What's happening now?
After running `docker-compose up` what happens is this:
1. The docker images will be downloaded and built, specifically localstack is downloaded, and the docker image for this project is built.
2. Then docker-compose spins up these containers together. When this container starts up it runs a bashscript which creates the terraform resrouces in localstack, and then starts up this application's jar.




#### Gradle issues?
If you have gradle build issues in your IDE, make sure the 

`
gradle/wrapper/gradle-wrapper.properties`

contains this: 
`
distributionUrl=https\://services.gradle.org/distributions/gradle-4.10-bin.zip
`

Create the gradle wrapper with the command

`
gradle wrapper
`

Then to build run:
`
./gradlew clean build
`