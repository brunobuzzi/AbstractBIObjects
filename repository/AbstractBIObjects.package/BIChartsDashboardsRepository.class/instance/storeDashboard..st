dashboards
storeDashboard: aBIDashboardDefinition

	(dashboardsDefinitions includesKey: aBIDashboardDefinition ownerName) ifFalse: [dashboardsDefinitions at: aBIDashboardDefinition ownerName put: Set new].

	^(dashboardsDefinitions at: aBIDashboardDefinition ownerName) add: aBIDashboardDefinition