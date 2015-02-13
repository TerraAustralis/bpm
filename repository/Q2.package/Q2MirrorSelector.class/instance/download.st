actions
download
	"Download, unzip and replace the current db with a named mirror db.
	We clear the session pool and nil out our own magma session so that
	we can allocate a new session after having replaced the db."

	Q2MagmaSessionPool cleanUp.	"this should disconnect and close all sessions, including ours"
	Q2MirrorDownloader download: selectedMirror.
	Q2MirrorSync createLocalSnapshot.
	self application logout.
	self answer