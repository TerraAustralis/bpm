This is the minimal web app in HttpView consisting of a single class
inheriting from HVTransientView with a single method called #default.

Well, I added a second variation in method #hello too. :)

You can start the app by simply sending messages to the class:

	HVHelloWorld start
	or
	HVHelloWorld startDebug

...and stop it:

	HVHelloWorld stop

When it is running, surf in at http://localhost:8080 or http://localhost:8080/hello to see it in action!

Notes:
- The port 8080 is the defaultPort, if you want another port just override that class side method or use startOn:.
- As you can see the path in the url maps automatically to the method name. Just add another method!
- #startDebug is better than #start when doing development, any bugs will open up the debugger.
- You can stop all apps using #stopAll. 