dashboards
removeDashboard: aBIDashboardDefinition

	(dashboardsDefinitions includesKey: aBIDashboardDefinition ownerName) 
	ifFalse: [NoBIDashboardException signal: 'No Dasboard for user named [', aBIDashboardDefinition ownerName, ']'].

	^(dashboardsDefinitions at: aBIDashboardDefinition ownerName) 
			remove: aBIDashboardDefinition 
			ifAbsent: [NoBIDashboardException signal: 'No such Dasboard to remove']