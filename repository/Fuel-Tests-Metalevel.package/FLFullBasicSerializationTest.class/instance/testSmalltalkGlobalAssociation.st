tests
testSmalltalkGlobalAssociation
	"An association included in Smalltalk globals is treated as global by default."

	self assertSerializationIdentityOf: (Smalltalk globals associationAt: #Smalltalk)