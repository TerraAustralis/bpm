initialize-release
url: aUrl

	url := aUrl.
	stream := ReadStream on: (aUrl path copyWith: nil)