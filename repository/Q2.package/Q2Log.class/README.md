Nice and simple logging. There are eight messages for logging based on severity. These correspond to the eight levels defined in syslog:

7 - debug (Debug-level messages)
6 - info (Informational)
5 - notice (Normal but significant Condition)
4 - warning (Warning Condition)
3 - err (Error Condition)
2 - crit (Critical Conditions)
1 - alert (must be handled immediately)
0 - emerg (System is unusable)
	
The absolutely easiest way to log is like this:

	Q2Log warn: 'Oopsidaisy'

We only need to include the actual message in the string, timestamp etc is added automatically.
You can also explicitly supply a "sender" object which can be anything you like, a symbol or a specific domain object even:

	Q2Log warn: 'Yowsa' sender: #email

Q2Log uses printString on the sender when producing the log entry, so if you use domain objects - make sure they have a unique printOn: method defined so that you can distinguish them. See class side category "logging" and "logging shorthand" for the available log messages.

By default there is a single emitter registered that logs on Transcript, you can turn this off with:

	Q2Log useTranscript: false

And you can set a threshold for the above 8 syslog levels that should be logged onto Transcript using:

	Q2Log instance transcriptMaxLevel: 4

..or set a global threshold for all emitters:

	Q2Log instance globalMaxLevel: 4

Global flushing of all emitters can be done using "Q2Log flush" and should ideally be called regularly by some background process.

Finally take a look at Q2LogFile for details on how to add it as an emitter to get logging onto file instead of Transcript, and Q2LogMorph for getting logging into a very nice UI that offers filtering, searching etc.