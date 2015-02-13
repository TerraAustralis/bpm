I provide a wrapper for targets of console operations, e.g. Q2Model and Q2Process instances.
So the Q2MorphicAdminConsole can interact with them through an unified interface.

I am an abstract superclass. My subclasses Q2ModelProxy and Q2ProcessProxy implements
the details of the interaction with the targets. You can instantiate me with:
	Q2RootProxy on: aRootObject
I give you an Q2ModelProxy, a Q2RootProxy or an error, based on the class of aRootObject.
My subclasses aren't holding any reference to their targets.

You can modify my targets definition with #modifyDefinitionTo: aString
You can get a (shared) instance of my target with #target.

I forward every message to the target, that i don't understand.