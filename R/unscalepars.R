#' unscale the parameters for bounded optimals
#' @param tpars enter tpars
#' @param lb lower bound
#' @param ub upper bound
#' @examples
#' # unscalepars(tpars,lb,ub)
#' @export

unscalepars=function(tpars,lb,ub)	{			#unscales pars
  (ub-lb)/(1+exp(-tpars))+lb					#lb=lower bound, ub=upper bound
}
