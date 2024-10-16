test_that("test erreur inscription_competition", {
  expect_error(object = inscription_competition(17),
               regexp = "L'age doit etre superieur ou egal a 18 pour s'inscrire.")
})

test_that("test conformite inscription_competition", {
  result <- inscription_competition(20, pays = "France")
  expect_equal(object = result,
               expected = "Bravo ! Tu peux t'inscrire ! Pays represente : France")

  result <- inscription_competition(23, pays = "Belgique")
  expect_equal(object = result,
               expected = "Bravo ! Tu peux t'inscrire ! Pays represente : Belgique")

  result <- inscription_competition(28)
  expect_equal(object = result,
               expected = "Bravo ! Tu peux t'inscrire ! Pays represente : aucun")
})
