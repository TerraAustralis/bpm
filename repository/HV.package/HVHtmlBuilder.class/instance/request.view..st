initialize-release
request: aRequest view: aView

	view := aView.
	request := aRequest.
	request isPostRequest
		ifTrue: [fields := request postFields]
		ifFalse: [fields := request getFields].
	document := WVHtmlDocument new.
	variables := Dictionary new