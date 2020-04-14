cache
createNewDashboardDefinitionNamed: aString in: aBIDashboardRepository for: anAppUser
	"The receiver create a new instance of itself named <aString> in repository <aBIDashboardRepository> with owner <anApplicationUser>"

	^self new
		name: aString;
		owner: anAppUser;
		dashboardRepository: aBIDashboardRepository;
		yourself