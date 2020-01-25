#### How to start the project
1. Run `docker-compose up`
2. In a different terminal window cd to the `terraform/local` folder
3. Run `terraform init`
4.  To run terraform: `terraform apply`


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