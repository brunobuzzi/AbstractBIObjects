other
clone
	| newDistribution |

	newDistribution := super clone.

	newDistribution isGrouped: isGrouped.

	^newDistribution