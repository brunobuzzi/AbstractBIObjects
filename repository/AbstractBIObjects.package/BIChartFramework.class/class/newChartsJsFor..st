instance creation
newChartsJsFor: aBIChartDefinition
	
	^BIChartJsFramework new 
		name: 'ChartJs';
		chartDefinition: aBIChartDefinition;
		yourself