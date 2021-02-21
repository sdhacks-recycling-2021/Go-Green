# Go Green

Go Green is an iOS application that allows users to either become drivers or recyclers. Drivers are the ones who collect the deliveries of containers and transport them all to a local recycling center. Recyclers are the ones who submit a ticket with the amount of containers they want to recycle. With this app, it is more likely that people will recycle if they know they could get some reward out of it.

# Inspiration

We wanted something that encouraged people to do more for the earth and the environment and we had to find a motivating factor. Noticing other mobile apps using a rewards point system like Triton2Go, we brainstormed ideas about what could provide some type of reward while also helping with sustainability. We arrived at the issue of CRV containers and how the cash back from recycling them could be an incentive for people to take the time to sort and recycle instead of just throwing everything into the rubbish bin. The issue was that most people don't have the time or energy to sort their recyclables AND take their containers to a recycling center. To solve this, we got inspiration from Uber, by applying their concept of transporting passengers to transporting loads of containers. This service would solve the inconvenience that arises with taking time out of the day to go to a recycling center and normal users wouldn't have to go too far and they'd be making some of their money back. Thus, Go-Green was born.

# How to run this project
* This app requires a Mac computer with Xcode installed because the app is not uploaded to Apple servers yet.

1. Clone this repository `git clone https://github.com/sdhacks-recycling-2021/Go-Green.git`
2. `cd` into the Go Green directory
3. Open "Go Green.xcodeproj" or enter `xed .` in your terminal
4. Click the play button at the top left of Xcode to run your simulator (Choose a device to run the app on)



#How to access the servers
#Note: to fully see the API's functionality, it's best to use an application like Postman

#Option 1: Communicate with the Google App Engine instance of the backend
#Available commands outlined here: https://docs.google.com/document/d/13Y4BCb3M1WpOELuadNa4mSdQrIfhYVeGav1IB5mQTaU/edit?usp=sharing

1. Navigate to this url: https://go-green-305408.uc.r.appspot.com/users
2. Wait some time for the Google App Engine to start an instance of the server
3. When you see the json displaying all users, the instance has been started and you can send HTTP request methods.


#Option 2: Locally host the server
#Running the server will require up to date Maven, and Java 11+

1. Clone this repository `git clone https://github.com/sdhacks-recycling-2021/Go-Green.git`
2. Navigate to Go-Green/server
3. Enter the command 'mvn spring-boot:run'
4. When the command line reads "(JVM running for x.xxx)" then the server is up locally
5. Using any browser you can use the same commands as option 1. Just replace "https://go-green-305408.uc.r.appspot.com" with "localhost:8080"
	e.g. "localhost:8080/users"