install.packages("BSDA")
library(BSDA)

# 1 

# a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

sebelum <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)
setelah <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

cat("Standar Deviasi sebelum: ", sd(sebelum), "\n")
cat("Standar Deviasi setelah: ", sd(setelah), "\n")

# b. Carilah nilai t (p-value)
t.test(sebelum, setelah, alternative = "greater", var.equal = FALSE)

# c. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
#   dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
#   aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
#   pengaruh yang signifikan secara statistika dalam hal kadar saturasi
#   oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
t.test(sebelum, setelah, mu = 0, alternative = "two.sided", var.equal = TRUE)
