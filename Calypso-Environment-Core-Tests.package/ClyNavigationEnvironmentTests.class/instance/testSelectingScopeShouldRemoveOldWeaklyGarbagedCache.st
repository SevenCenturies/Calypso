tests
testSelectingScopeShouldRemoveOldWeaklyGarbagedCache

	| cache scope |
	environment selectScope: ClyEnvironmentScope of: { self class }.	
	Smalltalk garbageCollectMost; garbageCollectMost.
	cache := environment scopeCacheFor: ClyEnvironmentScope.
	self assert: (cache clyIncludesCleanedKey: {self class}).
	
	scope := environment selectScope: ClyEnvironmentScope of: { self class superclass }.
	
	cache := environment scopeCacheFor: ClyEnvironmentScope.
	self deny: (cache includesKey: { self class })