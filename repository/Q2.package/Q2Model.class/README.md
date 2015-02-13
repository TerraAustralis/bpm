This it the top object of the domain model and it is stored in the root dictionary of the database.

users - all users of the system.
administrators - the small subset of users that are system administrators.
processes - the different case handling processes defined.
cases - all cases in the system, regardless of process.
caseCounter - a trivial unique number generator.
forms - forms defined in the global scope.
customObjectTypes - customObjectTypes defined in the global scope.
linkTypes - linkTypes defined in the global scope.
roles - roles defined in the global scope.

The following are only used on the master server:
processPrototypes - preconfigured prototypes of processes that can be used to instantiate new processes.
defaultModifyCaseForm - default form used when creating a new process prototype.
defaultCreateCaseForm - default form used when creating a new process prototype.
mirrors - all defined mirrors that can be downloaded and used offline.

The following are only used on a mirror:
prefix - the prefix of this model. It is nil on the master server and a String on a mirror.
mirrorTransactions - the local transactions not yet sent to the master server.
mirror - the mirror object describing this model.