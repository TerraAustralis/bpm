magma
tryToCommit: aBlock
	"Try five times to commit. Return result of block or nil if we fail."

	| success result |

	success := false.
	1 to: 5 do: [:n |
		[
			self begin.
			result := aBlock value.
			self commit.
			success := true.
		] on: MagmaCommitError do: [:ex |
			ex explore.
			Q2Log warn: 'Magma conflict #', n printString, ', retrying: ', ex signalerContext printString.
			self magmaSession abortAndRefreshAllObjects.
		 ].

		success ifTrue: [^result].
	].

	Q2Log error: 'Magma conflict 5 times, giving up.'.

	^nil