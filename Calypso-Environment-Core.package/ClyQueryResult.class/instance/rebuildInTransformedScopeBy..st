queries
rebuildInTransformedScopeBy: aBlockWithScopeArg

	| newScope |
	newScope := aBlockWithScopeArg value: environmentScope.

	^newScope query: self class