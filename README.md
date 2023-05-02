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


## Overview
* An app for people with mental illnesses under the **Smart India Hackathon (SIH)** initiative to arrange a doctor for the user.
* The app interacts with the user through some questions, such as Is this an appointment for yourself or others? Relationship with the other you are appointing a doctor? Reason and the medical history? What is the date and time of the appointment?
* Additionally, it offers emails, helpline numbers, and a chatbot that responds via Google Cloud's JSON API linked with Dialogflow.

## Let's have a look at some screenshots and code below to learn more about:
* The entire project consists of seven pages, with the login page serving as the first page when a user launches the app. In code, we have defined the routes in the **_lib>utils>routes.dart_** file, determining their routes to be called. In the main body, we linked them with each other to start the app and end with the final_body.dart file. Route linking is done as follows in the MaterialApp section:
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
### 1. Login Page -
* The login page contains a *username,a password, a login button, and new User Registration* options. The new user will click on the "User Registration" option, where he will be forwarded to the registration page. If the user already has an account, then the user can login and will be forwarded to the Request page.
![Screenshot_20230407_124942](https://user-images.githubusercontent.com/112277897/230567484-2ae0ec90-cd37-4ccd-9881-207fb0ef80cb.jpg)

### 2. Registration -
* When the user clicks "User Registration", they will get three text areas to enter their *name, email,and password*, as well as a *phone number box*. It also has a "Register" button, which will route you back to the login page.
* For phone numbers, we have used 'package:intl_phone_field/intl_phone_field.dart,' which helps us get access to other countries country codes. The following code will help you take a look.
 ```
      IntlPhoneField(
                            decoration: const InputDecoration(
                              labelText: 'Phone Number',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(),
                              ),
                            ),
                            initialCountryCode: 'IN',
                            onChanged: (phone) {
                              if (kDebugMode) {
                                print(phone.completeNumber);
                              }
                            },
                          ),
```
![Screenshot_20230407_124947](https://user-images.githubusercontent.com/112277897/230569003-c525b901-b752-4050-ae9b-0ebfbbd456d9.jpg)

### 3. Drawer -
* A Drawer is an interface that is available on every single page. The basic idea is to get access to account-related services on every page of the registered user.
* The Drawer is a prebuilt function that helps us achieve what we want in the app bar and also cuts out connections with the main body to highlight itself. Our Drawer contains a *profile, account name,and email*. It will help the user navigate. The *ListTile* function is used to give them a vertical look.
* The Drawer also has a *Drawer header*, which is used to highlight the user's details. We have used it as follows:
 ```
      DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Atharv Mannur"),
                accountEmail: Text("atharvmannur@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/man.jpg",
                  ),
                ),
              ),
            ),
```
![Screenshot_20230407_154653](https://user-images.githubusercontent.com/112277897/230592746-0a36a307-3d20-4655-a50a-52cefa4e91f5.jpg)
* For email, we have used a basic template that will redirect the user to their email app, and we have also predefined it by adding the receiver's email address and subject. We have achieved it with the following code:
 ```
      ListTile(
                leading: const Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: const Text(
                  "Email me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  customLaunch(
                      'mailto:kiranteam@email.com?subject=Requesting%20Help&body=Write%20Here');
                })
          ],
```
![Screenshot_20230407_154708_Gmail](https://user-images.githubusercontent.com/112277897/230592754-fe4d6c75-81fd-4f36-befa-468b79fc62f0.jpg)


# 4. Request Page -
* This page contains an *AppBar* with a drawer, *body*, and a *floating action button* with two calling options: one for the KIRAN helpline and another for the child protection helpline. The body of the page has 4 options, among which the first button is for the self-appointment, the second button is for other people than the registered person, the third button is for chatting with a bot for any small help required in the app, and the last button is to launch the website regarding information about the organisation.
![Screenshot_20230407_125051](https://user-images.githubusercontent.com/112277897/230569743-a5ecb97a-777e-4bcf-93fc-84918e469e8c.jpg)
![Screenshot_20230407_125104](https://user-images.githubusercontent.com/112277897/230569778-3a72070d-aa78-4dc1-bc03-9f22bcc7bdd8.jpg)

# 5. Friend page -
* This page is for the user when the user's relative or other known person wants you to get an appointment but is too shy to create his own account or does not want to create his own account. The page is simple, it has only two text areas, one for the patient's name and another for your relationship with them. After clicking the submit button, he will be redirected to the information page.
![Screenshot_20230407_155524](https://user-images.githubusercontent.com/112277897/230593141-5c60b356-c243-4c8e-9c3a-d12599042c6a.jpg)

# 6. Information page (Home page) -
* The page contains a current mood metre (a horizontal bar with 7 stops having emojis or images of the most common moods) and a text area to add *reasons* and *medical history*. This option is not required, the user can proceed without giving any answers.
* We have kept this page so that the doctor can get an idea of the user or patient before the meeting. It will help the doctor prepare and assist them.
![Screenshot_20230407_125110](https://user-images.githubusercontent.com/112277897/230594334-f6b240c3-18ac-4a04-b762-65289b771653.jpg)

# 7. Date and Time page (Submit page) -
* The body section of the page contains three buttons: one for the date, one for the time, and one for the submit button. We achieve this with the help of the following code:
 ```
      Future<DateTime?> pickDate() => showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(2023),
      lastDate: DateTime(2025));

  Future<TimeOfDay?> pickTime() => showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: dateTime.hour, minute: dateTime.minute));
```
* Both showDatePicker and showTimePicker are prebuilt functions that are called by pickDate() and pickTime(), respectively, and return values in a variable. We do not require any extra packages for it. It is available in the *'package:flutter/material.dart'*, which is the standard package.
* The submit button (labelled find Doctor) is routed to a basic page with the help of "MyRoutes.finalRoute".
![Screenshot_20230407_125121](https://user-images.githubusercontent.com/112277897/230595895-06633389-3b81-453a-9405-9dd03b367e4d.jpg)
![Screenshot_20230407_125134](https://user-images.githubusercontent.com/112277897/230595891-47d48eae-b232-4fca-ba57-e9ade4722dfb.jpg)
![Screenshot_20230407_125124](https://user-images.githubusercontent.com/112277897/230595900-6dc58042-8283-4506-a57d-171f84f9df46.jpg)

# 8. Chat page -
* The page is a chat window where the user can enter basic questions, and the response is also given back through an API. **Dialogflow** is connected to the Google Cloud via the JSON API. It responds to English, Hindi, and Marathi languages, mainly English. Following are some questions you may ask our bot: **I cannot use app properly
Feeling depressed 
My doctor did not call?
Reports have not been provided
क्या आप कृपया मुझे डॉक्टर ढूंढ सकते हैं
तुम्ही कृपया मला डॉक्टर शोधू शकता का?** 
Check it out in the demo_video folder.
