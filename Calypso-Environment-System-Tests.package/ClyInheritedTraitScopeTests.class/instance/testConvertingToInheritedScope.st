tests
testConvertingToInheritedScope
	| convertedScope |
	scope := self createSampleScope.
	scope metaLevelScope: ClyInstanceSideScope.
	
	convertedScope := scope asInheritedScope.
	
	self assert: convertedScope equals: (ClySuperclassScope of: scope basisObjects metaLevel: scope metaLevelScope)