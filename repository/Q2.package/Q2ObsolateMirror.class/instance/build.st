building
build
	"Creates and populates a new Magma database on disk
	with the partial content intended. This should be run
	in a background Process."

	self createDb; fillDb; zipDb