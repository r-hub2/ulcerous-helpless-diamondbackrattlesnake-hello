inscription_competition <- function(age, pays = "aucun") {

  if (age < 18) {
    stop("L'age doit etre superieur ou egal a 18 pour s'inscrire.")
  }

  result <- glue::glue("Bravo ! Tu peux t'inscrire ! Pays represente : {pays}")

  return(result)
}
