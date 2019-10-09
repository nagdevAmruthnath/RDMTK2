#' Get participant counts
#' @param taskType task type
#' @param exprAID exprAID values
#' @param exprBID exprBID values
#' @return 100
#' @examples
#' # rdmtkGetParticipantsCntExpr(taskType, exprAID, exprBID)
#' @export

rdmtkGetParticipantsCntExpr <-
function(taskType, exprAID, exprBID, ...){

 cat(sprintf("taskType: %s exprAID: %s exprBID: %s\n", taskType,exprAID,exprBID));
 return(100)
}
