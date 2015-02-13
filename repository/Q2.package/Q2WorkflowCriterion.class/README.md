A criterion is a boolean "function" that given a Q2Case answers true or false showing if this criterion is met.

The message returning this value is #isValidFor: and should be implemented by subclasses.
The message #validationMessage should also be implemented and giving a suitable String describing why this criterion is not met. It is only called if #isValidFor: returns false.

Criteria can be added in three places:
	- As enter criteria on a stage. The criteria must be met in order for a case to enter the stage.
	- As exit criteria on a stage. The criteria must be met in order for a case to exit the stage.
	- As a criteria on a transition. The criteria must be met in order for the transition to be allowed.

See Q2Transition>>isValidFor: or Q2Transition>>validateFor:in: showing how all these three are verified when checking to see if a transition is allowed. The first method only tests and the second tests and collects all results.

Criteria is also given a chance to "react" when a transition is about to be made by implementing any of the 5 methods in the actions category. See Q2Transition>>moveCase:.
