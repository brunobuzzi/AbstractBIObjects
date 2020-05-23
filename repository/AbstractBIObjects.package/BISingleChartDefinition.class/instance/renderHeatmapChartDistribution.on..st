html render
renderHeatmapChartDistribution: anAppDistributionReport on: html

	^chartFramework 
			render2DArrayKeyValueChart: html highcharts newChart  
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesHeatmap) 
			on: html