private
graph
  "Lazily generate the workflow graph.
	We regenerate it if the model has newer transactions."

  | format id doc |
  self flag: #'q2todo'.	"refactor with other implementors"
  ((graph isKindOf: Q2WorkflowGraph)
    and: [ process == graphProcess and: [ txnMarker = self model txnMarker ] ])
    ifFalse: [ 
      graph := Q2WorkflowGraph for: process.
      format := self settings graphFormat.
      id := process id.
      graph generateDocument: id type: format.
      permissionsGraph := Q2WorkflowGraph for: self model session currentUser.
      id := self model session currentUser id.
      permissionsGraph graphviz
        id: id;
        make: format asSymbol.
      doc := WAMimeDocument
        on:
          (GRPlatform current
            contentsOfFile:
              'dot' , Q2Platform fileDirectoryClass slash , id , '.' , format
            binary: true)
        mimeType: WAMimeType imagePng
        fileName:
          'dot' , Q2Platform fileDirectoryClass slash , id , '.' , format.
      permissionsGraph document: doc.
      graphProcess := process.
      txnMarker := self model txnMarker ].
  ^ graph