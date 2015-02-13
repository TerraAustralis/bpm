private
index: aString with: aTitleString into: anIndexFileName
  | ws eol |
  eol := self endOfLine.
  ws := (WriteStream on: String new)
    nextPutAll: 'Path-Name: ' , aTitleString , eol;
    nextPutAll: 'Content-Length: ' , aString size asString , eol;
    nextPutAll: eol;
    nextPutAll: aString.
  ^ self index: ws contents into: anIndexFileName