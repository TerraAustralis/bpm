I am the main library which Gjallar uses, and I honour the setting 'resourcesDirectory' (default 'resources'.)

Generating html
usage: Q2Resources / 'gjallar.png' or Q2Resources / #gjallarPng
generates urls of the form /seaside/files/resources/gjallar.png

When resolving this url for serving the resource the process is as follows:
1 Any in-image resource in a subclass of Q2Resources which has libraryName = setting resourceDirectory (Q2MyResources is an example)
2. Any file in directory referred to by resourceDirectory.
3. In-image default provided by DefaultResources