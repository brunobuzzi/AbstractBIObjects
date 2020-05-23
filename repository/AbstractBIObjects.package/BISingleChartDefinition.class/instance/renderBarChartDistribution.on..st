html render
renderBarChartDistribution: anAppDistributionReport on: html

	^chartFramework 
			renderSimpleKeyValueChart: html highcharts newChart  
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesColumn) 
			on: html