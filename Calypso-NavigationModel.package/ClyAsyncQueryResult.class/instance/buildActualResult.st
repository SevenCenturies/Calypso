building
buildActualResult

	actualResult := actualQuery execute.
	items := actualResult items.
	metadata := nil.
	self collectMetadata.
	buildProcess := nil.
	self notifyObservers.
	environment systemChanged: (ClyAsyncQueryIsDone with: self)