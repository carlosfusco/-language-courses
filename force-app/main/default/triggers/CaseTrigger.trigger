trigger CaseTrigger on Case (before insert) {

    //Id q = [select Id from Group where  Type = 'Queue' AND NAME = 'QueueName'];
    //List<Group> lstQueueRecords = [Select Id, Name, DeveloperName, Type from Group where Type = 'Queue'];
    List<Group> queueList = [select Id from Group where  Type = 'Queue' AND NAME = 'Claims'];


    for(Case cs : Trigger.New) {
        cs.Description = 'Test Description';
        cs.OwnerId = queueList[0].Id;
    }

}