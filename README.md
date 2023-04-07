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
* An app for people with mental illnesses under the Smart India Hackathon (SIH) initiative to arrange a doctor for the user.
* The app interacts with the user through some questions, such as Is this an appointment for yourself or others? Relationship with the other you are appointing a doctor? Reason and the medical history? What is the date and 
time of the appointment?
* Additionally, it offers emails, helpline numbers, and a chatbot that responds via Google Cloud's JSON API linked with Dialogflow.

## Detailed Description
* The entire project consists of seven pages, with the login page serving as the first page when a user launches the app. In code, we have defined the routes in the lib>utils>routes.dart file, determining their routes to be called. In the main body, we linked them with each other to start the app and end with the final_body.dart file. Routes linking is done as follows in the MaterialApp section:
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
* The login page is the first to appear on the screen, and it contains a username and password, a login button, and a link to the page where new users can be added.
![Screenshot_20230407_124942](https://user-images.githubusercontent.com/112277897/230567484-2ae0ec90-cd37-4ccd-9881-207fb0ef80cb.jpg)

# 2. Registration -
* When the user clicks "User Registration", the following page appears. The page contains a textbox to enter name, email, password, and phone number. It is only routed back to the login page while tapping on the button "Register".
![Screenshot_20230407_124947](https://user-images.githubusercontent.com/112277897/230569003-c525b901-b752-4050-ae9b-0ebfbbd456d9.jpg)
![Screenshot_20230407_125028](https://user-images.githubusercontent.com/112277897/230569030-e270582a-b327-4036-8fc7-b9ddf55bfd27.jpg)

# 3. Drawer -
* It contains DrawerHeader, a prebuilt function containing account name, email, and a circle image, as shown below. It will help the user navigate. It also contains a temporary email option.
![Screenshot_20230407_154653](https://user-images.githubusercontent.com/112277897/230592746-0a36a307-3d20-4655-a50a-52cefa4e91f5.jpg)
![Screenshot_20230407_154708_Gmail](https://user-images.githubusercontent.com/112277897/230592754-fe4d6c75-81fd-4f36-befa-468b79fc62f0.jpg)


# 4. Request Page -
* This page contains an AppBar with a drawer and a floating action button with two calling options: one for the KIRAN helpline and another for the child protection helpline. The body of the page has 4 options, among which the first button is for the self-appointment, the second button is for other people than the registered person, the third button is for chatting with a bot for any small help required in the app, and the last button is to launch the website regarding information about the organisation.
![Screenshot_20230407_125051](https://user-images.githubusercontent.com/112277897/230569743-a5ecb97a-777e-4bcf-93fc-84918e469e8c.jpg)
![Screenshot_20230407_125104](https://user-images.githubusercontent.com/112277897/230569778-3a72070d-aa78-4dc1-bc03-9f22bcc7bdd8.jpg)

# 5. Friend page -
* This page is for the user when the user's relative or other known person wants you to get an appointment but is too shy to create his own account or does not want to create his own account.
![Screenshot_20230407_155524](https://user-images.githubusercontent.com/112277897/230593141-5c60b356-c243-4c8e-9c3a-d12599042c6a.jpg)

# 6. Information page (Home page) -
* The page contains a current mood metre and a text area to add reasons and medical history. This option is not required; the user may proceed with this option. This page is available for both the friend and myself buttons.
![Screenshot_20230407_125110](https://user-images.githubusercontent.com/112277897/230594334-f6b240c3-18ac-4a04-b762-65289b771653.jpg)

# 7. Date and Time page (Submit page) -
* The body section of the page contains three buttons: one for the date, one for the time, and one for the submit button. The following shows how it has been displayed.
![Screenshot_20230407_125121](https://user-images.githubusercontent.com/112277897/230595895-06633389-3b81-453a-9405-9dd03b367e4d.jpg)
![Screenshot_20230407_125134](https://user-images.githubusercontent.com/112277897/230595891-47d48eae-b232-4fca-ba57-e9ade4722dfb.jpg)
![Screenshot_20230407_125124](https://user-images.githubusercontent.com/112277897/230595900-6dc58042-8283-4506-a57d-171f84f9df46.jpg)

# 8. Chat page -
* The page is a chat window where the user can enter basic questions, and the response is also given back through an API. The Dialogflow is connected to the Google cloud via JSON API. It is currently responding in English, Hindi, and Marathi. Check it out in the demo_video folder.
