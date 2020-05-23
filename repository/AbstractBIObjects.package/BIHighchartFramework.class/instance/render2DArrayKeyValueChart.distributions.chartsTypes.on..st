other
render2DArrayKeyValueChart: aHighchart distributions: distributionCollection chartsTypes: seriesClassCollection on: html
	"The receiver render <aHighchart> on <aWADivTag> using the distributions contained in <distributionCollection> with chart types <seriesClassCollection>.
	<distributionCollection> is a collection of <AppDistributionReport> and in this case <AppDistributionReport> is a collection of 2DArray key-values to render:
	Typical used with Heatmap charts. The key can is an 2D Array (a coordinate) and the value <aNumber>"

	^self render2DArrayKeyValueChart: aHighchart distributions: distributionCollection chartsTypes: seriesClassCollection atDiv: html div