outdated
lastUpdate
	"Answer the last update of the receiver. The last created time stamp of <BIDashboardInstance>"

	dashboardInstances isEmpty ifTrue: [^TimeStamp fromString: '01/01/1970'].

	^dashboardInstances last creationTime