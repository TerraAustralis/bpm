Each Q2 object can be controlled for permissions by Q2Object>>writeCheck/readCheck. Objects not derived from Q2Object can be checked with help from a Q2Object, e.g. a collection can check permissions of its contained Q2Objects with: 
"model writeCheck: collection".

In Q2Object>>writeCheck, the object sends isWritable: with the object to the current session. The current session knows the current user, and asks the user of the permissions.

The Q2User and possibly its subclasses implements canWrite:/canRead:. The base class compares getAccessLevelFor:in: with the requested Q2Permission level (Q2Permission write/Q2Permission read). 

The subclass Q2SystemUser overrides canWrite/canRead to allow anything for a system user.

To find the permission associated with an object for a user, the user permissions are retrieved by taking the permissions with one or more categories matching the user's categories. Permission objects with no categories are also added to the current permission list.
For each retreived permission, the access level for the object is determined. The highest access level is compared to the wanted level (read/write), to return the correct value of canWrite/canRead.

Hence, the default permission comparison is done in Q2User>>getAccessLevelFor:in:. However, this is possible to override in three levels:
* Q2Object (override: writeCheck/readCheck)
* Q2Session/Q2SessionWithoutSeaside (override: isWritable/isReadable)
* Q2User (override: canWrite/canRead)