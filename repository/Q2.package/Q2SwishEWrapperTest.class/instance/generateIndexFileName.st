as yet unclassified
generateIndexFileName
  ^ Q2SwishEWrapper indexDirectory pathName
    , Q2Platform fileDirectoryClass slash , 'test' , UUID new asString , '.idx'