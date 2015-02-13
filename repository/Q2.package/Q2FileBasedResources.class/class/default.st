instance creation
default
	 
	| dir |

	dir := Q2Session current settings resourcesDirectory.

	^ self instances at: dir ifAbsentPut: [ self newFor: dir ]