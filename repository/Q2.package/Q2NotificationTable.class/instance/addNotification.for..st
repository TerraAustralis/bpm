as yet unclassified
addNotification: newNotification for: user
	"All email notifications (subscriptions) come through here, thus
	we check that the user actually has an email address."

	| allNotifications currentNotification |
	user email isEmptyOrNil ifTrue: [
		Q2Log notice: 'Not adding notification for user ', user name, ' since the user has no email.'.
		^self].

	allNotifications := pendingNotifications at: user ifAbsentPut: [OrderedCollection new].
	currentNotification := allNotifications 
		detect: [:each | each subscription = newNotification subscription]
		ifNone: [currentNotification := (Q2Notification new) subscription: newNotification subscription.
				allNotifications add: currentNotification].
	newNotification events do: [:event | 
		currentNotification addEvent: event]