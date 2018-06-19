
#' Some Bayesian plots
#'
#' Some Bayesian plots
#'
#' @importFrom bayesplot mcmc_areas
#' @export
mcmc_areas <-
  function(object, ...) {
    UseMethod("mcmc_areas")
  }

#' @export
mcmc_areas.default <-
  function(object, ...) {
    bayesplot::mcmc_areas(object, ...)
  }

#' @export
mcmc_areas.brmsfit <-
  function(object, ...) {
    bayesplot::mcmc_areas(as.matrix(stanfit(object)), ...)
  }
