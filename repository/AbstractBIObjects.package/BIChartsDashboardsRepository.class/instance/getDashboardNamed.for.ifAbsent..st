dashboards
getDashboardNamed: aString for: anAppUser ifAbsent: aBlock

	^(dashboardsDefinitions at: anAppUser username ifAbsent: [^aBlock value]) detect: [:each | each name asUppercase = aString asUppercase] ifNone: [aBlock value]