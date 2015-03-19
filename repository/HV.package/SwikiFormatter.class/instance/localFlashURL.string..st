private
localFlashURL: url string: string
	"Make a local flash file embedded, string defines:
		<width>x<height> in pixels."

	| w h path |
	string ifNil: [^''].
	w := string copyUpTo: $x.
	h := string copyFrom: w size + 2 to: string size.
	path := base, '/', url.
	^'<object type="application/x-shockwave-flash" data="', path, '" width="',
		w asString, '" height="', h asString, '"><param name="movie" value="',
		path, '"></param></object>'