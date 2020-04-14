dashboard instances
removeInstance: aBIDashboardInstance

	^dashboardInstances remove: aBIDashboardInstance ifAbsent: [NoBIDashboardException signal: 'No such Dasboard to remove']