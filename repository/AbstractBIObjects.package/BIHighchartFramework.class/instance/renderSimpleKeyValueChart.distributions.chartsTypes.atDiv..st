other
renderSimpleKeyValueChart: aHighchart distributions: distributionCollection chartsTypes: seriesClassCollection atDiv: aWADivTag
	"The receiver render <aHighchart> on <aWADivTag> using the distributions contained in <distributionCollection> with chart types <seriesClassCollection>.
	<distributionCollection> is a collection of <AppDistributionReport> and in this case <AppDistributionReport> is a collection of keys-values to render:
	Typical used with Bar,Pie, Spline & Spline Area charts. The key can be a string, integer, date, boolean or time and the value <aNumber>"
	| mainDistribution |

	distributionCollection ifEmpty: [^self].
	
	mainDistribution := distributionCollection at: 1.
	aHighchart addYAxis title text: mainDistribution yTitle.
	aHighchart legend enabled: true.
	aHighchart title text: mainDistribution name.
	aHighchart subtitle text: mainDistribution description.
	aHighchart xAxis title text: mainDistribution xTitle.
	aHighchart xAxis type: 'category'.
	mainDistribution categories ifNotNil: [:categories | aHighchart xAxis categories: categories]. 

	distributionCollection keysAndValuesDo: [:index :eachDistribution | | serieClass |
		serieClass := seriesClassCollection at: index.
		chartDefinition distributionIsGrouped "this is used to group BarCharts (to display versions of different processes)"
		ifFalse: [self setRegularDataFrom: eachDistribution for: aHighchart withSerie: serieClass] "<AppDistributionReport> distribution: dictionary of key and value"
		ifTrue: [self setGroupedDataFrom: eachDistribution for: aHighchart withSerie: serieClass]. "<AppDistributionReport> distribution: dictionary of key and anArray of values"
	]. 

	aWADivTag script: aHighchart