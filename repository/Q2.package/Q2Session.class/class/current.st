instance creation
current
	"test"

	"Return the current Q2Session. If we are running in Seaside
	then this returns a Q2Session, which is a subclass of WASession (via Kilauea).
	If we are outside of Seaside we return a Q2SessionWithoutSeaside bound to the
	running Process - and allocate a new one if there is none.
	The session object holds a MagmaSession instance allocated from a pool.
	Finally, if UseMock is true we return a Q2MockSession typically used for unit tests."


	^ self currentOrNil ifNil: [  Q2SessionWithoutSeaside useDefault ]