#' scales the parameters for bounded optimals
#' @param tpars enter tpars
#' @param lb lower bound
#' @param ub upper bound
#' @examples
#' # scalepars(tpars,lb,ub)
#' @export

scalepars=function(tpars,lb,ub) { 				#scales pars for bounded optim
  -log(((ub-lb)/(tpars-lb))-1)					#lb=lower bound, ub=upper bound
}
