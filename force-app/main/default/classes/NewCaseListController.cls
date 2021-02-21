public class NewCaseListController {
    
    public List<Case> getNewCases(){
        String status = 'New';
         List<Case> cases = Database.query(
        'SELECT Id, CaseNumber ' +
        'FROM Case ' +
        'WHERE Status = :status '
    );
    return cases;
    }

}