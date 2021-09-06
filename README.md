# project

<img width="1143" alt="Screen Shot 2021-09-06 at 11 39 27 AM" src="https://user-images.githubusercontent.com/32503459/132249886-f067b8c0-9d20-4cef-8e5e-183367f62804.png">
<img width="1157" alt="Screen Shot 2021-09-06 at 11 39 39 AM" src="https://user-images.githubusercontent.com/32503459/132249900-9ccd52ba-cddc-441d-be76-b33c60e228ff.png">
<img width="1157" alt="Screen Shot 2021-09-06 at 11 39 56 AM" src="https://user-images.githubusercontent.com/32503459/132249922-dbfdfc18-1471-4533-9b44-db74bd8ebf02.png">
<img width="1124" alt="Screen Shot 2021-09-06 at 11 40 26 AM" src="https://user-images.githubusercontent.com/32503459/132249938-20cc8f93-4b0b-4fb0-b257-9a1659ead479.png">


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

 Instructions for running on android emulator

 Download flutter, dart, make sure “flutter get packages” has been run
 Make sure Flutters SDK path is set : file -> settings -> languages and frameworks ->  flutter 
Clone project from repo at origin/master
Make sure the emulator your running is android pie API 28
 Configure android SDK built for x86 (mobile)
 Run main.dart
To run individual pages without going through the login page, in the wrapper class change return Authenticate() to return Samplepage()


 PSA on testing:
 
 Testing for flutter was very complicated and yielded little tangible results. Code coverage testing for flutter is mainly done through a tool called lcov, which spits out a binary that then needs to be converted into HTML to be readable.  There were other basic code coverage tools  provided within android studio and  github's Atom editor, however it was discovered that Android Studio would only run coverage on certain files and the code coverage support in atom was  depreciated after 2017 after flutters alpha phase.  Both of these methods were tried with limited to no success.  We then found a Bash script  that would supposedly create the lcov file then spit out the HTML. This script is located in our testing folder and is named bash_script.txt. We were able to secure sudo access to an ubuntu computer within the Undergraduate Projects Lab (one of the team members is a coordinator in the lab) and tried running it there. The script failed on those computers due to differences in the environments configuration that were not expected by the script. ( the script was written in late 2018, the ubuntu computer was last updated around 2014 ish). We even reached out to the other group that used flutter, and they were in the same situation regarding testing. Hope seemed to be lost.
 
 Alas, a ray of light!  We discovered we were able to test the core backend functionality of our app by drafting simplified unit testing that ignored all UI elements. We were able to successfully test authentication and database access, which is what our app depends on. 
