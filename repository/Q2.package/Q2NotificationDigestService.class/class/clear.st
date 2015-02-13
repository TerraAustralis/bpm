as yet unclassified
clear
	| nowDateAndTime |
	"Q2NotificationDigest clear"
	super clear.
"	Keep this until fully tested...
	Start gigesting next whole hour.
	interval := 60 * 60.
	nowDateAndTime := DateAndTime fromSeconds: now.
	nextRun := now + (3600 - (60 * nowDateAndTime minutes + nowDateAndTime seconds))
"