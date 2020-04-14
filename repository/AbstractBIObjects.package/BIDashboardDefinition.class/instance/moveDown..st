other
moveDown: aBIDashboardChartDefinition
	| dashboardItemDef index |

	dashboardItemDef := self getDashboardItemDefinitionFor: aBIDashboardChartDefinition.
	index := items indexOf: dashboardItemDef.
	(index = 0) ifTrue: [NoBIDashboardItemException signal: 'No such DashboardItemDefinition'].
	
	(index <= 1) ifTrue: [^ImproperBIOperationException signal: 'Chart Definiton Item can not be moved down'].

	items remove: dashboardItemDef ifAbsent: [NoBIDashboardItemException signal: 'No such DashboardItemDefinition'].

	items add: dashboardItemDef beforeIndex: index - 1.