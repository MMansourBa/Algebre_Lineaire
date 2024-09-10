# Définir la matrice A
A <- matrix(c(2, 0, 1,
              1, 1, 1,
              -2, 0, -1), 
            nrow = 3, byrow = TRUE)

# 1. Transposée de A
A_transpose <- t(A)

# 2. Produit de A et de sa transposée
A_produit <- A %*% A_transpose

# 3. Déterminant de A
A_determinant <- det(A)

# 4. Valeurs propres et vecteurs propres de A
A_propres <- eigen(A)

# 5. Matrice diagonale à partir des valeurs propres
A_diagonale <- diag(A_propres$values)

# 6. Former la matrice de passage (matrice des vecteurs propres)
P <- A_propres$vectors
P_inverse <- solve(P)

# 7. Produit matriciel entre P et son inverse
P_produit <- P %*% P_inverse

# Afficher tous les résultats
print(list(
  Transpose_de_A = A_transpose,
  Produit_A_A_transpose = A_produit,
  Determinant_A = A_determinant,
  Valeurs_propres = A_propres$values,
  Vecteurs_propres = A_propres$vectors,
  Matrice_diagonale = A_diagonale,
  Inverse_de_P = P_inverse,
  Produit_P_P_inverse = P_produit
))
