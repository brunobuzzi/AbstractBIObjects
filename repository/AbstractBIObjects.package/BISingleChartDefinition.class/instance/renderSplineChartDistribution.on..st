html render
renderSplineChartDistribution: anAppDistributionReport on: html
	| highchart |

	highchart := html highcharts newChart.
	^chartFramework 
			renderSimpleKeyValueChart: highchart
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesSpline) 
			on: html