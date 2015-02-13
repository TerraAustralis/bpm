as yet unclassified
unzipDb
	"Unzip a mirror, first clear directory."
	
	self flag: #q2todo. "Multiplatform support?"
	Q2Session current noDb ifFalse: [
		Q2Session current deleteDatabase ].
	"Win32Shell new 
		shellExecute: nil
		lpOperation: 'open'
		lpFile: FileDirectory default pathName , FileDirectory slash , 'win32\bin\unzip.exe'
		lpParameters: '-o mirrors' , FileDirectory slash , aName , '.zip -d ' 
				, self databaseDirectory pathName
		lpDirectory: nil
		nShowCmd: 0."
	ZipArchive new
		readFrom: self targetPath;
		extractAllTo: self databaseDirectory