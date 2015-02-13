A trivial time profiling tool. Use it like this (see Transcript):

Q2Times reset; stamp: 'one'.
(Delay forSeconds: 1) wait.
Q2Times stamp: 'two'.
(Delay forSeconds: 1) wait.
Q2Times stamp: 'three'; print

...but use TimeProfileBrowser instead whenever you can.