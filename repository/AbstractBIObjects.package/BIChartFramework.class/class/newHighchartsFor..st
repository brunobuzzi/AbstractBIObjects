instance creation
newHighchartsFor: aBIChartDefinition
	
	^BIHighchartFramework new 
		name: 'Highcharts';
		chartDefinition: aBIChartDefinition;
		yourself