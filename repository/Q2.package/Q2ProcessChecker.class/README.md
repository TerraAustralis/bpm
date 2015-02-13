I check the Graph of a process for consistency.

Possible useful expressions for doIt or printIt.

Structure:
 process		OrderedCollection  --  Q2ProcessButton just to find the processes name
 transitions 	OrderedCollection -- Q2TransitionLine used as edges for quick access in graph traversal
 states 		OrderedCollection -- Q2Statebutton used as nodes in the graph
 admins 		OrderedCollection -- Strings process admins
 users  		OrderedCollection -- Strings process users
 errorList		OrderedCollection -- Strings of errors during process check

Any further useful comments about the general approach of this implementation.