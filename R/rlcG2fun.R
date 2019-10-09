#' Computes loglikelyhood of EVL models
#' @param temppars temppars values
#' @param tempparbounds tempparbounds values
#' @param deckchoices deckchoices values
#' @param wins wins values
#' @param losses losses values
#' @return log of temp choice probability
#' @examples
#' # rlcG2fun(temppars,tempparbounds,deckchoices,wins,losses)
#' @export

rlcG2fun=function(temppars,tempparbounds,deckchoices,wins,losses)
{							#technically, this computes -2*loglikehoodof EVL model.
  #it’s G2 comparing to a perfectly fitting model.
  templength=length(deckchoices)
  tempchoiceprob=matrix(c(deckchoices==1,deckchoices==2,deckchoices==3,deckchoices==4),ncol=4,nrow=templength,byrow=FALSE)*rbind(c(0,0,0,0),Filterrlcpredpfun(temppars,deckchoices,wins,losses))

  tempchoiceprob=rowSums(tempchoiceprob)
  tempchoiceprob=tempchoiceprob[2:templength]				#removes trial 1
  return(-2*sum(log(tempchoiceprob)))
}
