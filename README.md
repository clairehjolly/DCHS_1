Instructions on how to run our app in android emulator:
Download flutter, dart, make sure “flutter get packages” has been run
Make sure Flutters SDK path is set : file -> settings -> languages and frameworks ->  flutter
Clone project from repo at origin/master
Make sure the emulator your running is android pie API 28
Configure android SDK built for x86 (mobile)
Run main.dart
To run individual pages without going through the login page, in the wrapper class change return Authenticate() to return Samplepage()
That should be everything