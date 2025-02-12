Extension { #name : #TKTCommonQueueWorkerPool }

{ #category : #'*BlocPac-Extensions' }
TKTCommonQueueWorkerPool >> gtWorkersFor: aView [
	<gtView>
	self workers ifNil: [ ^ aView empty ].
	^ aView columnedList 
		title: 'Workers';
		items: [ self workers asOrderedCollection ];
		column: 'Name' item: [ :aWorker | aWorker name ];
		column: 'Has Task' item: [ :aWorker | aWorker isFree not ] width: 80;
		column: 'Is Running' item: [ :aWorker | aWorker isRunning ] width: 80
]
