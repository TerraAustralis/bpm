external calls
runOSProcess: command with: arguments 

	| fullCommand |

	fullCommand _ self programPath, command, ' ', arguments.

	^ System performOnServer: fullCommand.