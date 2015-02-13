tests
testGenerator
	
	|  txtPath pngPath |

	"Generate graph"
	graph make: #png.

	"Check that the txt and png file exist"
	txtPath := graph generator outputCommandLineFileNameFor: 'txt'.
	pngPath := graph generator outputCommandLineFileNameFor: 'png'.

	self assert: (ServerFileDirectory default fileExists: txtPath).
	self assert: (ServerFileDirectory default fileExists: pngPath).