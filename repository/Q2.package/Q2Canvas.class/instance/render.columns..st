as yet unclassified
render: aCollection columns: cols
  "Render <aCollection> in tablerows of max <cols> cells."

  aCollection
    groupsOf: cols
    do: [ :group | self tableRow: [ group do: [ :each | self tableData: [ self render: each ] ] ] ]