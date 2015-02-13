private
version
	"self new version"

	^ProcessWrapper new
		useStdout;
		startWithCommand: (
			'"{1}" -V' format: { self swishEPath });
		upToEnd