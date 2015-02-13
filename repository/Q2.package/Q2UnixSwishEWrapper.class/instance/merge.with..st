private
merge: newIndexFileName with: oldIndexFileName
  | mergeIndexFileName cmd |
  mergeIndexFileName := self temporaryFileName.
  self flag: #'q2todo'.	"What if the names contain spaces?"
  cmd := '{1} -M ''{2}'' ''{3}'' ''{4}'''
    format:
      {(self swishEPath).
      newIndexFileName.
      oldIndexFileName.
      mergeIndexFileName}.
  System performOnServer: cmd.
  ^ mergeIndexFileName