utilities
checkExternalProgramPaths

	"Check things that must be in place for Gjallar to work."

	| swishEPath graphvizPath result |

	"Check that swich-e is installed and is in the path."
	swishEPath := (PipeableOSProcess command: 'which swish-e') output.
	swishEPath ifEmpty: [swishEPath := 'swish-e can not be found'].

	"Check that dot (graphviz) is installed and is in the path."
	graphvizPath := (PipeableOSProcess command: 'which dot') output.
	graphvizPath ifEmpty: [graphvizPath := 'dot (graphwiz) can not be found'].

	result := 'swish-e path: ', swishEPath, '
dot (graphviz) path: ', graphvizPath.

	(Workspace new contents: result) openLabel: 'Sanity check result'.