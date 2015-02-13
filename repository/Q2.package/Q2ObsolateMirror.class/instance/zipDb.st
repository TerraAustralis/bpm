private
zipDb
	"Zip it up using infozip for scalability."

	Win32Shell new shellExecute: nil
		lpOperation: 'open'
		lpFile: FileDirectory default pathName, FileDirectory slash, 'win32\bin\zip.exe'
		lpParameters:  'mirrors', FileDirectory slash, prefix, '.zip ', self databaseFullPath, FileDirectory slash, '*' 
		lpDirectory: nil
		nShowCmd: 0