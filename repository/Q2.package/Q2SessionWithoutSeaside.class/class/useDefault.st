barf6
useDefault
  "Return the default Q2Session for running outside of Seaside where Gjallar 
	is set up with a default configuration, i.e. at /seaside/Gjallar"

  "Changed the key from the symbol #Gjallar to the string 'Gjallar' 
	because the dictionary used in GemStone for registering Seaside 
	apps requires keys to be strings."

  ^ self use: 'Nextround'