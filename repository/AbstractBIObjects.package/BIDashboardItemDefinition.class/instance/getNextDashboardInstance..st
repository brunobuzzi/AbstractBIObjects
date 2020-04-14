browsing
getNextDashboardInstance: aBIDashboardInstance
	"The receiver answer the next dashboard instance after <aBIDashboardInstance> if no next exist then answer <nil> "

	^dashboardInstances after: aBIDashboardInstance ifAbsent: [nil]