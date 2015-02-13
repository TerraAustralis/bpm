render
editWorkflow
	
	| editWorkFlow |

	editWorkFlow := Q2PWTop new.
	editWorkFlow setProcess: process.

	self call: editWorkFlow.