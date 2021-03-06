dashboard generation
updateDashboardInstances
	"The receiver update its <BIDashboardInstance>s depending on the recursion policy <aBIDashboardRecursionDefinition>.
	If the recursion policy is outdated then a new instance of <BIDashboardInstance> is created for that <BIDashboardItemDefinition>"

	(items select: [:itemDefinition | itemDefinition isOutDated]) do: [:itemDefinition | | lastItemInstanceOrDefinition startDate |
		lastItemInstanceOrDefinition := itemDefinition lastDashboardInstanceOrNil ifNil: [itemDefinition] ifNotNil: [:itemInstance | itemInstance].
		startDate := itemDefinition modifyStartDateOnUpdate
			ifTrue: [itemDefinition updateStartDate: lastItemInstanceOrDefinition startDate] "add recursion time (1day | 1 week | 1 month | 1 year) to <lastItemInstanceOrDefinition startDate>"
			ifFalse: [lastItemInstanceOrDefinition startDate]. "if dashborad instance is nil --> is the start date of the Chart"
		itemDefinition generateDashboardInstanceFrom: startDate to: Date today.	
	].

	"<modifyStartDateOnUpdate>
	ifFalse: the start date of the new <BIDashboardInstance> remains the same.
	ifTrue: the start date of the new <BIDashboardInstance> is updated based on the recursion type"