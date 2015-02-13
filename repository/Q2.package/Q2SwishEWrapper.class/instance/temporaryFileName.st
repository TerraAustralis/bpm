private
temporaryFileName
  ^ self class tempIndexDirectory pathName , Q2Platform fileDirectoryClass slash
    , UUID new asString