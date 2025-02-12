Class {
	#name : #BlErrorCatchingCommand,
	#superclass : #BlTktDecoratedCommand,
	#instVars : [
		'exception'
	],
	#category : #'BlocPac-Tasker-Commands'
}

{ #category : #converting }
BlErrorCatchingCommand >> asErrorCatchingCommand [
	<return: #BlErrorCatchingCommand>
	^ self
]

{ #category : #accessing }
BlErrorCatchingCommand >> command: aCommand [
	self
		assert: [ aCommand isNotNil ]
		description: [ 'Command must be non-nil' ].
	super command: aCommand asResultPreservingCommand
]

{ #category : #accessing }
BlErrorCatchingCommand >> exception [
	<return: #Exception or: nil>
	^ exception
]

{ #category : #evaluating }
BlErrorCatchingCommand >> execute [
	[ 
		command execute.
		exception := nil.
	] on: self catchingErrors do: [ :anException |
		anException freeze.
		exception := anException.
	].
]

{ #category : #testing }
BlErrorCatchingCommand >> isException [
	"Return true, if evaluation raised an exception"
	<return: #Boolean>
	^ self exception notNil
]

{ #category : #accessing }
BlErrorCatchingCommand >> name [
	<return: #String>
	^ 'Error catching ', self command name
]

{ #category : #accessing }
BlErrorCatchingCommand >> result [
	"Return a command execution result"
	<return: #Object>
	^ self isException 
		ifTrue: [ self exception ] 
		ifFalse: [ self command result ]
]
