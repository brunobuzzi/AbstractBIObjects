other
renderSimpleKeyValueChart: aHighchart distributions: distributions chartsTypes: chartsTypes on: html
	"The receiver render <aHighchart> on <aWADivTag> using the distributions contained in <distributionCollection> with chart types <seriesClassCollection>.
	<distributionCollection> is a collection of <AppDistributionReport> and in this case <AppDistributionReport> is a collection of keys-values to render:
	Typical used with Bar,Pie, Spline & Spline Area charts. The key can be a string, integer, date, boolean or time and the value <aNumber>"

	^self renderSimpleKeyValueChart: aHighchart distributions: distributions chartsTypes: chartsTypes atDiv: html div