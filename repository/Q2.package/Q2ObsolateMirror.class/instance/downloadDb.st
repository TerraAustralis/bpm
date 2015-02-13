building
downloadDb
	"Downloads and unzips this mirror from the Q2 server."

	Win32Shell new shellExecute: nil
		lpOperation: 'open'
		lpFile: FileDirectory default pathName, FileDirectory slash, 'curl.exe'
		lpParameters:  (self settings serverMirrorHost), '/file/', prefix, '.zip'
		lpDirectory: nil
		nShowCmd: 0