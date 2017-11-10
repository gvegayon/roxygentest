#' Testing `Sexpr` with `roxygen2` (with `@md`)
#'
#' In this example, a part of the documentation chunk is not parsed correctly,
#' namely, the `Sexpr` bit.
#'
#' This doesn't work \Sexpr[results=text]{1+1}
#'
#' But this does! \Sexpr{1+1}
#'
#'
#' @name md
NULL


#' Testing `Sexpr` with `roxygen2` (with `@noMd` at the end)
#'
#' In this example, a part of the codechunk IS not parsed correctly,
#' namely, the `Sexpr` bit, as we set the `@noMd` at the end.
#'
#' \Sexpr[results=text]{1+1}
#'
#'
#' @name noMd-end
#' @noMd
NULL

#' Testing `Sexpr` with `roxygen2` (with `@noMd` at the middle)
#'
#' In this example, a part of the codechunk IS not parsed correctly,
#' namely, the `Sexpr` bit, as we set the `@noMd` in the middle.
#'
#' Actually, right after this text, and when calling `roxygenize` I see the warning
#'
#' \preformatted{
#' Warning: @noMd [code.r#34]: has no parameters
#' }
#'
#'
#' @noMd
#'
#' \Sexpr[results=text]{1+1}
#'
#'
#' @name noMd-middle
NULL
