private
runOSProcess: command with: arguments 

	| helperCommand |
	helperCommand _ '/Applications/GraphViz.app/Contents/MacOS/', command.
	helperCommand _ helperCommand, ' ', arguments.

	self runWithSystemFramework: helperCommand.