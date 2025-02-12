Class {
	#name : #BlTktUsageExamples,
	#superclass : #BlExamplesTest,
	#category : #'BlocPac-Tasker-Workers'
}

{ #category : #examples }
BlTktUsageExamples >> highUICPUBoundPool [
	<gtExample>
	| aPool |
	aPool := self workerProvider highUICPUBoundPool; pool.
	self assert: aPool name isString.
	self assert: aPool name isNotEmpty.
	self assert: aPool poolMaxSize isNumber.
	self assert: aPool processPriority isNumber.
	^ aPool
]

{ #category : #examples }
BlTktUsageExamples >> workerProvider [
	<gtExample>
	| aProvider |
	aProvider := BlTktWorkerProvider new.
	self assert: aProvider name isString.
	self assert: aProvider name isNotEmpty.
	self assert: aProvider poolMaxSize isNumber.
	self assert: aProvider processPriority isNumber.
	^ aProvider
]
