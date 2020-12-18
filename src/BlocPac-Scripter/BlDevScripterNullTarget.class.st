"
I am a copy of class BlDevScripterSelfEventTarget. This comment is copied from there, and might not be entirely accurate

Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : #BlDevScripterNullTarget,
	#superclass : #BlDevScripterTarget,
	#classInstVars : [
		'uniqueInstance'
	],
	#category : #'BlocPac-Scripter-Scripter-Targets'
}

{ #category : #cleanup }
BlDevScripterNullTarget class >> cleanUp [
	self resetUniqueInstance
]

{ #category : #cleanup }
BlDevScripterNullTarget class >> resetUniqueInstance [
	uniqueInstance := nil
]

{ #category : #accessing }
BlDevScripterNullTarget class >> uniqueInstance [
	^ uniqueInstance ifNil: [ uniqueInstance := self new ]
]

{ #category : #searching }
BlDevScripterNullTarget >> findTargetIn: anElement [
	<return: #BlElement>

	AssertionFailure signal: 'Target is not defined'
]

{ #category : #searching }
BlDevScripterNullTarget >> findTargetStartingInScripter: aScripter [
	AssertionFailure signal: 'Target is not defined'
]

{ #category : #printing }
BlDevScripterNullTarget >> gtDisplayString [
	^ ''
]

{ #category : #accessing }
BlDevScripterNullTarget >> identifier [
	^ 'null'
]

{ #category : #printing }
BlDevScripterNullTarget >> printOn: aStream [
	aStream nextPutAll: 'null'
]

{ #category : #updating }
BlDevScripterNullTarget >> updateUsing: aScripterEventTarget on: aStep [
	aStep target: aScripterEventTarget
	
]