html render
renderSplineChartDistribution: anAppDistributionReport on: html

	^chartFramework 
			renderSimpleKeyValueChart: html highcharts newChart  
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesSpline) 
			on: html