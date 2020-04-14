charts
getChartsFor: anAppUser withScope: aBIChartScopeClass

	^self getChartsFor: anAppUser withScope: aBIChartScopeClass satisfying: [:e | true]