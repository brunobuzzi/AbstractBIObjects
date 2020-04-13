other
newFor: aBpmUser in: aContainerBusinessObject

	^super new initialize
		user: aBpmUser;
		containerObject: aContainerBusinessObject;
		yourself