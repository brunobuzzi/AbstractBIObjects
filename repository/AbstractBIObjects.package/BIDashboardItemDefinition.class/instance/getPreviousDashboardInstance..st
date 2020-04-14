browsing
getPreviousDashboardInstance: aBIDashboardInstance
	"The receiver answer the previous dashboard instance before <aBIDashboardInstance> if no previous exist then answer <nil> "

	^dashboardInstances before: aBIDashboardInstance ifAbsent: [nil]