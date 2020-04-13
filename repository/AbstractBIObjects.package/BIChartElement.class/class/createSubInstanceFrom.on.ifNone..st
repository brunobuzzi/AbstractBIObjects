other
createSubInstanceFrom: aString on: aBIChartDefinition ifNone: aBlock
	| subInstance |

	subInstance := (self instanciableDistributionSubclasses detect: [:each | each getComboName = aString] ifNone: [^aBlock value]) new.

	subInstance chartDefinition: aBIChartDefinition. 

	^subInstance