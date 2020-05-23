html render
renderSplineAreaChartDistribution: anAppDistributionReport on: html

	^chartFramework 
			renderSimpleKeyValueChart: html highcharts newChart  
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesAreaspline) 
			on: html