transactions
addPlugin: aPlugin for: aRegistryOwner
	self applyTxn: ( Q2AddPluginTxn plugin: aPlugin owner: aRegistryOwner )