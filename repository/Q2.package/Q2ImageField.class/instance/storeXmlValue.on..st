value and cache
storeXmlValue: aValue on: writer
  writer
    startTag: 'ol';
    endTag.
  writer
    startTag: 'li';
    endTag.
  writer pcData: aValue localFileName.
  writer endTag: 'li'.
  writer endTag: 'ol'