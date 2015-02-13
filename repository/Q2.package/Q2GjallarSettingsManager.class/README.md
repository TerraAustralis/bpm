Abstract class providing the interface to externally defined gjallar settings.
Use my concrete subclass Q2GjallarSettings

Access from the typical Gjallar domains:
- everywhere: Q2Session current settings.
- in the model: Q2Object settings, a Q2Object settings.
- in the ui: a Q2ChildComponent settings.

#settings obtains an interface onto the settings iniFile named in the current seaside configuration.

Q2GjallarSettings clear. ensures that ini files will be re-read.
Q2Gjallar cleanImage includes this.

When a settings file is read, it notes the expireTime as specified by #inifileSeconds
on future accesses if the the file has expired it will be re-read

As a convenience individual settings may be referred to directly with message sends, e.g.
self settings databaseDirectory.
