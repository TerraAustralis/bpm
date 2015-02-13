roles
ownerUserAndRoleKeys
  ^ self process personalImportedUsers
    select: [ :each | each canBeResponsibleFor: self ]