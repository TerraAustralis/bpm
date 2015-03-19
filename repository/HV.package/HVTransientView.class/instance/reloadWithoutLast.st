dispatching
reloadWithoutLast
	"Make a redirection to same url without last
	path element, with parameters stripped and
	ending with a slash."

	^self redirectTo: ((urlStream setToEnd; back; path) utf8ToIso isoToSqueak)