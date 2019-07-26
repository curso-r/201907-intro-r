library(readr)
library(tibble)

tibble::view()

imdb <- read_csv(file = "dados/imdb.csv")
View(imdb)

library(readr)
imdb <- read_csv("dados/imdb.csv", locale = locale(encoding = "ISO-8859-1"))
view(imdb)

imdb <- read_csv("")

read_csv()

a <- 1
a <- 2

#rodar: ctrl + enter
# <-: ALT + -

# Funções -----------------------------------------------------------------

#Sintaxe
nome_da_funcao(arg1, arg2, ...)

# Objetos -----------------------------------------------------------------

# Os nomes devem começar com uma letra. 
# Podem conter letras, números, _ e .
imdb_ <- read_csv("dados/imdb.csv")

eu_uso_snake_case
outrasPessoasUsamCamelCase
algumas.pessoas.usam.pontos
E_algumasPoucas.Pessoas_RENUNCIAMconvenções

obj <- 1
obj

# ATALHO para rodar o código: CTRL + ENTER
# ATALHO para a <- : ALT - (alt menos)

# O R difencia minúscula de maiúscula!

a <- 5
A <- 42

tibble::view(im)

# Caminhos até o arquivo --------------------------------------------------

# 1. Podem ser absolutos
"/Users/william/Documents/curso-r/201907-intro-r/dados/imdb.csv"

#relativo
"dados/imdb.csv"

# 2. Podem ser relativos ao diretório de trabalho
getwd()



# Importando de texto e excel ---------------------------------------------

read.csv()
read.csv2()

read_csv()
read_csv2()

# Arquivos de texto
imdb <- read_csv(file = "dados/imdb.csv")
imdb2 <- read_delim("dados/imdb2.csv", delim = ";")

# Excel
install.packages("readxl")

imdb_excel <- read_excel("dados/imdb.xlsx")

install.packages("tidyverse")
library(tidyverse)

# Classes -----------------------------------------------------------------

# Numéricos (numeric)

obj <- 10
class(obj)

# Caracteres (character, strings)

obj <- "s"
obj2 <- "sim"
obj3 <- "a resposta é sim"

class(obj)
class(obj2)
class(obj3)

# Data

class(lubridate::dmy("01-01-2019"))
class(as.Date("2019-01-01"))

# Lógicos

obj <- T
obj1 <- F

T <- 1
T


# Bases (data.frame)

class(imdb)

tibble::view()

imdb

imdb <- read_csv("dados/imdb.csv")
class(imdb)

# Lendo vários arquivos ---------------------------------------------------

imdb_2013 <- read_csv("dados/por-ano/imdb-2013.csv")
imdb_2014 <- read_csv("dados/por-ano/imdb-2014.csv")
imdb_2015 <- read_csv("dados/por-ano/imdb-2015.csv")

imdb <- rbind(imdb_2013, imdb_2014)

imdb <- rbind(imdb, imdb_2015)


# Vetores -----------------------------------------------------------------

c(1, 4, 3, 10)

1:10

seq(1, 10, 2)
seq(from = -12, to = 10, by = 3)

# Subsetting

vetor <- c(4, 8, 15, 16, 23, 42)

vetor[1]
vetor[c(1, 3)]
vetor[-5]
vetor[-c(1, 3)]


# Coerção

class(c(1, 2, 3))

vetor <- c(1, 2, 3, "a")
c(1, 2, 3, "a") -> vetor
c(TRUE, FALSE, "a")
class(c(1L, 2L))
c(TRUE, FALSE, 1)

# character > numeric > inteiro > lógico

as.numeric(c(1, 2, 3, "a"))
as.character()
as.logical()
as.Date()

is.numeric(vetor)
is.character(1)

imdb$receita

is.numeric(imdb$receita)

# Controle de fluxo -------------------------------------------------------
a = 1
a > 2

# if/else
x <- 0

if(x < 0) {
  "negativo"
} else if(x == 0) {
  "neutro"
} else {
  "positivo"
}

seq(1, 10, 2)

# for
for(i in 1:10) {
  if(i %% 2 != 0) {
    texto <- paste0("Essa é a repetição ", i, "!")
    print(texto)
  }
}

# Lendo vários arquivos 2 -------------------------------------------------

arquivos <- list.files(
  "dados/por-ano/", 
  full.names = TRUE
)
  
for(caminho in arquivos) {
  
  base <- read_csv(caminho)
  
  if(caminho == arquivos[1]) {
    base_final <- base
  } else {
    base_final <- rbind(base_final, base)
  }
  
}

# SQL ---------------------------------------------------------------------

library(dplyr)

conexao <- src_sqlite("dados/imdb.sqlite", create = TRUE)

imdb_sqlite <- tbl(conexao, "imdb")
imdb_select <- tbl(conexao, sql("SELECT titulo, ano, diretor FROM imdb"))

compute

View(imdb_collect)

select(imdb_sqlite, titulo)
filter()
mutate()


# trazer para a memória
imdb_collect <- collect(imdb_sqlite)
collect(imdb_select)

# db.rstudio.com

# Outros formatos ---------------------------------------------------------

library(ggplot2)

p <- ggplot(mtcars, aes(y = mpg, x = cyl)) +
  geom_point()

p2 <- readr::read_rds("grafico.rds")
readr::write_rds(p, "grafico.rds", compress = "gz")

#rds

library(jsonlite)
imdb_json <- read_json("dados/imdb.json")

library(haven)

imdb_sas <- read_sas("dados/imdb.sas7bdat")
imdb_spss <- read_spss("dados/imdb.sav")

# pacote rio
library(rio)
imdb_rio <- rio::import("dados/imdb.xlsx")

# data.table
library(data.table)
imdb_dt <- fread("dados/imdb.csv")




  
