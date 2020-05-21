charts
storeChart: aBIChartDefinition

	(chartsDefinitions includesKey: aBIChartDefinition ownerName) ifFalse: [chartsDefinitions at: aBIChartDefinition ownerName put: Set new].

	^(chartsDefinitions at: aBIChartDefinition ownerName) add: aBIChartDefinition