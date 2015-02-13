private
basicSearch: aString in: anIndexFileName
  | cmd |
  cmd := '{1} -x "<swishtitle>@" -w ''{2}'' -f ''{3}'' -H 0'
    format:
      {(self swishEPath).
      aString.
      anIndexFileName}.
  Q2Log debug: cmd.
  ^ System performOnServer: cmd