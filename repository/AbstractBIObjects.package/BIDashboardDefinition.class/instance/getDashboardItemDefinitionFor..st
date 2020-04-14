other
getDashboardItemDefinitionFor: aBIChartDefinition

	^items detect: [:each | each chartDefinition == aBIChartDefinition] ifNone: [nil]