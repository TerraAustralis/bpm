creation
openInBrowser

	| file |
	file _ self  make: #svg.
	file _ self writeHtmlSvgFor: file.

	Win32Shell new shellOpen: file