attachments
tempAttachmentsDirectory
  "Return a temp directory that this case can store its attachments in."

  ^ self
    getDirectory:
      self settings tempAttachmentsDirectory , Q2Platform fileDirectoryClass slash
        , self id