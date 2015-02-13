as yet unclassified
onListChangedDoListUpdate: updater

	updater element id: self contentId ; render: [:html | self updateContentOn: html ].
	updater element id: self messageId ; render: [:html | self updateMessageOn: html ]