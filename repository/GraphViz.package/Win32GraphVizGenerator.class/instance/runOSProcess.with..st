external
runOSProcess: command with: arguments
	" I don't use FileDirectory slash, because this is platform specific code anyway."
	| shell |
	shell := Win32Shell new.
	shell
		shellExecute: nil
		lpOperation: 'open'
		lpFile: FileDirectory default pathName, '\win32\bin\', command, '.exe'
		lpParameters: arguments
		lpDirectory: self outputPath
		nShowCmd: 0