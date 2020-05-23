html render
renderHeatmapChartDistribution: anAppDistributionReport on: html atDiv: aWADivTag

	^chartFramework 
			render2DArrayKeyValueChart: html highcharts newChart  
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesHeatmap) 
			atDiv: html