charts
getChartsFor: anAppUser withScope: aBIChartScopeClass satisfying: aBlock

	^(self getChartsFor: anAppUser) select: [:each | (each hasScopeClass: aBIChartScopeClass) and: [aBlock value: each]]