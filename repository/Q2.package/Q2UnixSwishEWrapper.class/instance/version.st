private
version
  "self new version"

  ^ System performOnServer: ('{1} -V' format: {(self swishEPath)})