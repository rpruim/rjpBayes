
#' Create Rhat plot
#'
#' `mcmc_rhat()` is a generic.  The default method simply calls [`bayesplot::mcmc_rhat()`].
#' An additional method is provided for brmsfit objects so we can avoid first extracting
#' the R-hat values before creating the plot.
#'
#' @inheritParams brms::rhat
#'
#' @param object A model fitted with `[brms::brm()`].
#' @importFrom brms rhat
#' @importFrom bayesplot mcmc_rhat
#' @export

mcmc_rhat <-
  function(object, ..., size = NULL) {
    UseMethod("mcmc_rhat")
  }


#' @rdname mcmc_rhat
#' @export
mcmc_rhat.default <-
  function(object, ..., size = NULL) {
    bayesplot::mcmc_rhat(object, ..., size = size)
  }


#' @rdname mcmc_rhat
#' @export
mcmc_rhat.brmsfit <-
  function(object, pars = NULL, ..., size = NULL) {
    rh <- brms::rhat(object, pars = pars, ...)
    bayesplot::mcmc_rhat(rh, ..., size = size)
  }
