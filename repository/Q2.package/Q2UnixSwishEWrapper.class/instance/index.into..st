private
index: aSwishEString into: anIndexFileName
  System
    performOnServer:
      ('{1} -S prog -f ''{2}'' -i stdin' , self endOfLine , '{3}'
        format:
          {(self swishEPath).
          anIndexFileName.
          aSwishEString})