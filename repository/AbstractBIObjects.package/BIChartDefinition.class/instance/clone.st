other
clone
	| newChart |

	newChart := self class newFor: user in: containerObject.

	newChart dynamicInstVarAt: #originalChart put: self.

	^newChart