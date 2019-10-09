#' Generate results and input to database
#' @param taskType task type
#' @param exprID exprAID values
#' @param mdlType type of model
#' @return a returnList
#' @examples
#' # rdmtkIGTMdlRslts(taskType, exprID, mdlType)
#' @export

rdmtkIGTMdlRslts <- function(taskType, exprID, mdlType, ...){

  #Insert results in the database
  library(DBI);
  library(pwr);
  # Connect to my-db as defined in ~/.my.cnf
  con <- dbConnect(RMySQL::MySQL(), group = "my-db");

  SQL <- paste("SELECT anlys_rslt FROM expr_anlys_data WHERE experid ='", exprID, "' and expertype = '", taskType,"' and anlys_mdl = '",mdlType,"';", sep = "");
  res <- dbSendQuery(con, SQL);
  tempRslt <- dbFetch(res);

  if(length(tempRslt$anlys_rslt)>0){
  b=charToRaw(tempRslt$anlys_rslt)
  tempRslt =head(unserialize(b))
  returnList <- list("rslt" = tempRslt)
  return(returnList)
}
}
