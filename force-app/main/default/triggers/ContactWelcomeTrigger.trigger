trigger ContactWelcomeTrigger on Contact (after insert) {
    ContactWelcomeHandler.handleAfterInsert(Trigger.new);
}