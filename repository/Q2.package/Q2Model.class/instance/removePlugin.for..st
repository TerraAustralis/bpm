transactions
removePlugin: aPlugin for: aRegistryOwner
	self applyTxn: ( Q2RemovePluginTxn plugin: aPlugin owner: aRegistryOwner )