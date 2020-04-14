charts
getChartsFor: anAppUser

	^chartsDefinitions at: anAppUser username ifAbsent: [#()]