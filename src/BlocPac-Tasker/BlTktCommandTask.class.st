Class {
	#name : #BlTktCommandTask,
	#superclass : #TKTTask,
	#traits : 'TBlDebug',
	#classTraits : 'TBlDebug classTrait',
	#instVars : [
		'command'
	],
	#category : #'BlocPac-Tasker-TaskIt Tasks'
}

{ #category : #accessing }
BlTktCommandTask >> command [
	<return: #BlTktProtoCommand>
	^ command
]

{ #category : #accessing }
BlTktCommandTask >> command: aCommand [
	self
		assert: [ aCommand isNotNil ]
		description: [ 'Command must be non-nil' ].
	command := aCommand asBlTktCommand asBlTktLoggingCommand
]

{ #category : #executing }
BlTktCommandTask >> configureTaskExecution: anExecution with: aRunner [
	super configureTaskExecution: anExecution with: aRunner.
	self command taskExecution: anExecution.
	^ anExecution
]

{ #category : #accessing }
BlTktCommandTask >> entryIdentifier [
	"Answer the queue entry identifier of the receiver for task scheduling.
	Defer to my command."

	^command entryIdentifier
]

{ #category : #accessing }
BlTktCommandTask >> entryPriority [
	"Answer the priority of the receiver for task scheduling.
	Defer to my command."

	^command entryPriority
]

{ #category : #executing }
BlTktCommandTask >> evaluateOn: aTaskExecution [

	self
		assert: [ self command isNil not ]
		description: [ 'Command task must be initialized before using it' ].
	Processor activeProcess task: self.
	^self command value. 

]

{ #category : #executing }
BlTktCommandTask >> futureTaskExecutionFor: aRunner [
	^ self configureTaskExecution: BlTktFutureExecution new with: aRunner
]

{ #category : #accessing }
BlTktCommandTask >> name [
	<return: #String>
	^ self command name
]

{ #category : #printing }
BlTktCommandTask >> printOn: aStream [
	self command ifNil: [ super printOn: aStream. ^ self ].
	self name ifNil: [ super printOn: aStream. ^ self ].
	aStream
		nextPutAll: 'Task named ';
		print: self name.
]

{ #category : #executing }
BlTktCommandTask >> scheduleTaskExecutionFor: aRunner [
	^ self configureTaskExecution: BlTktCommandTaskExecution new with: aRunner
]

{ #category : #evaluating }
BlTktCommandTask >> value [

	self
		assert: [ self command isNil not ]
		description: [ 'Command task must be initialized before using it' ].
	Processor activeProcess task: self.
	^self command value. 

]
