# Doctor Consultation App Using Flutter
April 2022 - June 2022

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


***Illustration:-***
● An app for people with mental illnesses under the Smart India Hackathon (SIH) initiative to arrange a doctor 
for the user.
● The app interacts with the user through some questions, such as Is this an appointment for yourself or others? 
Relationship with the other you are appointing a doctor? Reason and the medical history? What is the date and 
time of the appointment?
● Additionally, it offers emails, helpline numbers, and a chatbot that responds via Google Cloud's JSON API 
linked with Dialogflow.

##Detailed Description
* Entire project is of 7 pages of which login page is the starting page whenever an user opens the app. In code, we have defined the routes in the lib>utils>routes.dart file determining their routes to get get called. In main body we linked it with each other to start the app and end with final_body.dart file. Routes linking is done as follows in MaterialApp section -
 ```
      routes: {
          "/": (context) => const LoginPage(),
          "/home": (context) => const HomePage(),
          "/login": (context) => const LoginPage(),
          "/submit": (context) => const SubmitPage(),
          "/final": (context) => const FinalPage(),
          "/request": (context) => const RequestPage(),
          "/friend": (context) => const FriendPage(),
          "/chat": (context) => const ChatPage(),
        });
     ```
# 1. Login Page -
* The first page to appear on the screen is the Login page which contains username and password, login button, and a route to add new users page. 
![Screenshot_20230407_124942](https://user-images.githubusercontent.com/112277897/230567484-2ae0ec90-cd37-4ccd-9881-207fb0ef80cb.jpg)

# 2. Registration -
* When user tab the "User Registration" the following page appears. The page contains Name, Email, Password, and phone number. It is only routed back to login page while tapping on the button "Register".
![Screenshot_20230407_124947](https://user-images.githubusercontent.com/112277897/230569003-c525b901-b752-4050-ae9b-0ebfbbd456d9.jpg)
![Screenshot_20230407_125028](https://user-images.githubusercontent.com/112277897/230569030-e270582a-b327-4036-8fc7-b9ddf55bfd27.jpg)

# 3. Request Page -
* This page contains a AppBar with a slider and Floating Action Button. 
![Screenshot_20230407_125051](https://user-images.githubusercontent.com/112277897/230569743-a5ecb97a-777e-4bcf-93fc-84918e469e8c.jpg)
![Screenshot_20230407_125056](https://user-images.githubusercontent.com/112277897/230569763-8970249f-9f79-4b31-9925-9901c1b5f117.jpg)
![Screenshot_20230407_125104](https://user-images.githubusercontent.com/112277897/230569778-3a72070d-aa78-4dc1-bc03-9f22bcc7bdd8.jpg)
