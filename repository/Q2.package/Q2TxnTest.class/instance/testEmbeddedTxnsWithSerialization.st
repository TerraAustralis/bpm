methods
testEmbeddedTxnsWithSerialization

	| serializer oldModel comparator |
	Q2Session sessionDo: [
		model modifyGlobalDefinitionTo: 'Q2Model loadSimple' ].
	oldModel := model.
	serializer := Q2TxnSerializer new.
	serializer serialize.
	Q2Session current model: Q2Model basicNew.
	model := Q2Session current model.
	model initialize.
	model useIndexing: false.
	Q2MockSession mockModel: model.
	serializer deserialize.
	comparator := Q2ObjectComparator with: oldModel with: model.
	self assert: comparator compare