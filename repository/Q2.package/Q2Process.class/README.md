plugInRegistry plugInSubscriptionsA process is the main central point in processing cases. It is highly isolated from the other processes and only access global objects through explicit imports of them.

model - a reference to the owning Q2Model. Used for imports, access to central resourcs (like case number generation) and queries to the global scope etc.
cases - the cases belonging to this process. A case can only be in one process.
workflow - the Q2WorkFlow object for this process.
administrators - the users designated as administrators of this process.

filters - filters defined in this process only.
definedCategories - categories defined in this process only.
forms - forms defined in this process only.
customObjectTypes - customObjectTypes defined in this process only.
linkTypes - linkTypes defined in this process only.
roles - roles defined in this process only.

createCaseForm - the basic form used to create cases.
modifyCaseForm - the basic form used to modify cases.

importedUsers - users that are visible in this process.
importedCategories - categories that are visible in this process.
importedCustomObjectTypes - custom object types that are visible in this process.
importedForms - forms that are visible in this process.
