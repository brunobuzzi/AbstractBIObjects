other
moveUp: aBIDashboardChartDefinition
	| dashboardItemDef index |

	dashboardItemDef := self getDashboardItemDefinitionFor: aBIDashboardChartDefinition.
	index := items indexOf: dashboardItemDef.
	(index = 0) ifTrue: [NoBIDashboardItemException signal: 'No such DashboardItemDefinition'].

	(index >= items size) ifTrue: [^ImproperBIOperationException signal: 'Chart Definiton Item can not be moved up'].

	items remove: dashboardItemDef ifAbsent: [NoBIDashboardItemException signal: 'No such DashboardItemDefinition'].

	items add: dashboardItemDef afterIndex: index.