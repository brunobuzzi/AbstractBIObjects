charts
removeChart: aBIChartDefinition

	(chartsDefinitions includesKey: aBIChartDefinition ownerName) 
	ifFalse: [NoBIDashboardException signal: 'No Chart for user named [', aBIChartDefinition ownerName, ']'].

	^(chartsDefinitions at: aBIChartDefinition ownerName) 
			remove: aBIChartDefinition 
			ifAbsent: [NoBIDashboardException signal: 'No such Chart to remove']