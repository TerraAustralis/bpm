This is the stack of filters used primarily as the "current filter" of the user that is used in "View cases" and other contexts. We hold the filters in a SortedCollection sorted by rank. We also hold a free text query as a String.

Magma can not store the compiledBlock so it is a transient variable lazily initialized.