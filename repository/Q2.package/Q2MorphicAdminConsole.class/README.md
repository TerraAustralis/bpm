I am a morphic console for Gjallar. You can modify the model and process definitions in the name of the 'system' user with me.
I have three panes and a button:
 * With the button you can choose among the model and processes.
 * The top left pane contains the definition. You can save it with alt+s.
 * The bottom left pane show errors and results.
 * The right pane is an ObjectExplorer on the selected object (model or process), which is updated automatically.

You can open me in the world with:

Q2MorphicAdminConsole open

Structure:
 window			SystemWindow -- main window.
 explorer 			Q2PluggableExplorer -- an ObjectExplorer tailored for embedding.
 button 				PluggableButtonMorph -- with a popup menu to choose your rootObject
 definitionMorph	PluggableTextMorph -- the input pane of the console
 result 				String -- the result string or error message
 rootProxy			Q2ModelProxy or Q2ProcessProxy -- the target shown in the explorer, self in the definition.

I might be buggy, i am fairly untested.
Working with multiple instances of me might cause strange behaviour.
I write to the model in the #definition: method.
Added syntax check for the definition.

We have serious problems with holding onto model instances, thats what we wanted
to solve with the proxies, failed because the explorer has to hold onto the instances.