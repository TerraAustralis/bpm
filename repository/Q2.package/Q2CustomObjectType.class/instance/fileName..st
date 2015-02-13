initialize-release
fileName: f
	"Default is to use comma as separator in the file."

	loader := (Q2CustomObjectFileLoader fileName: f separator: $,).