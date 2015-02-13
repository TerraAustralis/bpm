I am a platform independent per process variable. Inherit from me to create a specific variable. 

This class delegates to the current Q2Platform, which in turn uses the mechanism available on the current platform to store and retrieve the variable value. 

On Squeak the package ProcessSpecific is used, and on GemStone the class GsProcess and the _clientData: methods are used. 