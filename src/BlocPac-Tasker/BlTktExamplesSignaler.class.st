"
I hold couple of {{gtClass:Semaphore}} that can by used to exemplify (test) particular behavior, involving various processes.
 

"
Class {
	#name : #BlTktExamplesSignaler,
	#superclass : #Object,
	#instVars : [
		'taskSemaphore',
		'callerSemaphore',
		'thirdPartySemaphore',
		'fourthPartySemaphore'
	],
	#category : #'BlocPac-Tasker-Examples'
}

{ #category : #defaults }
BlTktExamplesSignaler >> defaultTimeout [
	^ 1000 "milliSeconds"
]

{ #category : #initialization }
BlTktExamplesSignaler >> initialize [
	super initialize.
	callerSemaphore := Semaphore new.
	taskSemaphore := Semaphore new.
	thirdPartySemaphore := Semaphore new.
	fourthPartySemaphore := Semaphore new.
]

{ #category : #signalling }
BlTktExamplesSignaler >> signalCallerSemaphore [
	callerSemaphore signal
]

{ #category : #signalling }
BlTktExamplesSignaler >> signalFourthPartySemaphore [
	fourthPartySemaphore signal
]

{ #category : #signalling }
BlTktExamplesSignaler >> signalTaskSemaphore [
	taskSemaphore signal
]

{ #category : #signalling }
BlTktExamplesSignaler >> signalThirdPartySemaphore [
	thirdPartySemaphore signal
]

{ #category : #signalling }
BlTktExamplesSignaler >> waitForCaller [
	| isTimeouted |
	isTimeouted := callerSemaphore waitTimeoutMSecs: self defaultTimeout.
	self assert: isTimeouted not
]

{ #category : #signalling }
BlTktExamplesSignaler >> waitForFourthPartySemaphore [
	| isTimeouted |
	isTimeouted := fourthPartySemaphore waitTimeoutMSecs: self defaultTimeout.
	self assert: isTimeouted not
]

{ #category : #signalling }
BlTktExamplesSignaler >> waitForTask [
	| isTimeouted |
	isTimeouted := taskSemaphore waitTimeoutMSecs: self defaultTimeout.
	self assert: isTimeouted not
]

{ #category : #signalling }
BlTktExamplesSignaler >> waitForThirdPartySemaphore [
	| isTimeouted |
	isTimeouted := thirdPartySemaphore waitTimeoutMSecs: self defaultTimeout.
	self assert: isTimeouted not
]

{ #category : #signalling }
BlTktExamplesSignaler >> waitForTimeoutedTask [
	| isTimeouted |
	isTimeouted := taskSemaphore waitTimeoutMSecs: self defaultTimeout.
	self assert: isTimeouted
]
