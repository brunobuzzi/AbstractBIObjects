html render
renderSplineChartDistribution: anAppDistributionReport on: html

	^self renderArray2Chart: html highcharts newChart 
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesSpline) 
			on: html