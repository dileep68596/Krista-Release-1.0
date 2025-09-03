trigger CaseTrigger on Case (before insert, before update, after insert, after update) {
	CaseTriggerDispatcher.dispatcher(Trigger.operationType);
}