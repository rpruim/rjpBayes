
#' Extract Stan fit from wrapper object
#'
#' Currently this only knows how to handle "stanfit" objects and objects of class "brmsfit".
#'
#' @export
stanfit <- function(object, ...) {
  UseMethod("stanfit")
}

#' @export
stanfit.default <- function(object, ...) {
  if (!inherits(object, "stanfit")) {
    stop("I don't know how to extract a stanfit from that object")
  }
  object
}

#' @export
stanfit.brmsfit <- function(object, ...) {
  object$fit
}
