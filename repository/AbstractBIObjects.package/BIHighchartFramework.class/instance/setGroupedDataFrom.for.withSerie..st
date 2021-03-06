other
setGroupedDataFrom: anAppDistributionReport for: aHighchart withSerie: serieClass
	"The receiver extract data from the report <anAppDistributionReport> and load it to highchart instance <aHighchart> as a serie of type <serieClass>"

	anAppDistributionReport getAllReports do: [:eachDistributionReport | 
		eachDistributionReport distributionKeysAsSortedCollectionAndValuesDo: [:key :anArray | 
			(aHighchart addSeriesOf: serieClass)
				name: key;
				data: anArray
		].
	].