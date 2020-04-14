other
removeItemWithChart: aBIChartDefinition ifAbsent: aBlock

	^self removeItem: (items detect: [:each | each chartDefinition == aBIChartDefinition] ifNone: [^aBlock value])