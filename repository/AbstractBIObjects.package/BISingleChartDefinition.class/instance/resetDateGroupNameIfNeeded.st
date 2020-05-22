distribution
resetDateGroupNameIfNeeded

	distribution ifNil: [^self].

	(distribution isFieldEvolution or: [distribution isFieldEvolutionComparison]) ifTrue: [^self].

	self dateGroupName: nil.