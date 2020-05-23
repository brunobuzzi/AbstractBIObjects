other
render2DArrayKeyValueChart: aHighchart distributions: distributionCollection chartsTypes: seriesClassCollection atDiv: aWADivTag
	"The receiver render <aHighchart> on <aWADivTag> using the distributions contained in <distributionCollection> with chart types <seriesClassCollection>.
	<distributionCollection> is a collection of <AppDistributionReport> and in this case <AppDistributionReport> is a collection of 2DArray key-values to render:
	Typical used with Heatmap charts. The key can is an 2D Array (a coordinate) and the value <aNumber>"
	| mainDistribution yAxisCategories newSerie |

	distributionCollection ifEmpty: [^self].

	yAxisCategories := #('Sunday' 'Monday' 'Tuesday' 'Wednesday' 'Thursday' 'Friday' 'Saturday') collect: [:each | each translateFor: chartDefinition user].
	
	mainDistribution := distributionCollection at: 1.
	aHighchart colorAxis minColor: '#ffffff'.
	aHighchart colorAxis maxColor: '#000099'.
	aHighchart addYAxis categories: yAxisCategories.
	aHighchart yAxis first title text: 'Days'.
	aHighchart yAxis first max: 6.
	aHighchart yAxis first min: 0.

	aHighchart legend enabled: false.
	aHighchart title text: mainDistribution name.
	aHighchart subtitle text: mainDistribution description.
	aHighchart xAxis title text: mainDistribution xTitle.
	aHighchart xAxis type: 'category'.
	aHighchart xAxis categories: mainDistribution getHeatMapXAxisDaysCollection.

	distributionCollection keysAndValuesDo: [:index :eachDistribution | | data serieClass |
		data := OrderedCollection new.
		eachDistribution distributionKeysAndValuesDo: [:keyArray :value | 
			data add: (Array with: (keyArray at: 1) with: (keyArray at: 2) with: value).
		].
		serieClass := seriesClassCollection at: index.
		newSerie := aHighchart addSeriesOf: serieClass.
		newSerie
			index: 0;
			name: eachDistribution seriesName;
			data: data asArray.
		newSerie dataLabels color: '#000000';
							enabled: true.			

	]. 

	aWADivTag script: aHighchart.