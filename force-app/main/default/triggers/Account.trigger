trigger Account on Account (after insert, after update, before update) {
    System.debug('Trigger call');
    if(Trigger.isInsert){
        System.debug('HERE1');
    }
    if(Trigger.isUpdate){
       if (Trigger.isBefore) {
            
           System.debug('HERE2');
           devI.increment(Trigger.New);
           	/*For(Account a: Trigger.New) {

                a.increment__c += 1;
                update a;
		  }*/
        } else if (Trigger.isAfter) {
            // Process after insert
        }
    }
}