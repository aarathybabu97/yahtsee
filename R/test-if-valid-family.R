test_if_valid_family <- function(family) {
  if (!(family %in% inla_likelihood_names)) {
    msg <- cli::format_error(
      c(
        "Must provide valid likelihood family",
        x = "You provided: {.val {family}}",
        i = "Did you mean: {.val {suggest_nearest_likelihood_names(family)}}?",
        i = "See {.var ?INLA::inla.models()$likelihood} for all likelihoods"
      )
    )
    rlang::abort(msg)
  }
}
