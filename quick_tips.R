
## Aquecimento -----------------------------

# qual a função que faz/constrói vetores?
c()




# qual a diferença entre as duas partes abaixo?

# parte 1
x <- 1:5

# parte 2
y <- c(1,2,3,4,5)

(x, y)



# qual a diferença entre as duas partes abaixo?

# parte 1
x <- 1:5
sum(x)

# parte 2
sum(c(1,2,3,4,5))





# qual a diferença entre as duas partes abaixo?
x <- 1:5

# parte 1
x[!x > 3]

!c(FALSE, FALSE, FALSE, TRUE, TRUE)

# parte 2
x[!c(FALSE, FALSE, FALSE, TRUE, TRUE)]





library(magrittr)
library(dplyr)
library(tidyverse)
# qual a diferença entre as duas partes abaixo?
x <- 1:5

# parte 1
sin(x > 3)

sin(TRUE)
sin(FALSE)
# parte 2
x %>% sin









# qual a diferença entre as duas partes abaixo?

# parte 1
sin(c(1,2,3,4,5))

# parte 2
sin(as.numeric(c("1","2","3","4","5", "a")))

as.numeric()
as.character()
library(lubridate)
as.Date("2019-01-01") + years(5)

"2019-01-01" - 1

# descubra quais pastas estão na sua 
# área de trabalho sem sair daqui!
# DICA: **abra e feche aspas**
"dados/imdb.xlsx"
""



# Qual a diferença entre apertar CTRL+ENTER 
# sem selecionar nada VERSUS selecionando
# uma linha inteira?
2 + 2



# Utilizando o tab, o nome do pacote e o '::', 
# faça o rstudio listar todas as funções do
# pacote stringr.



# o x é um vetor pequeno, então qual seria 
# uma maneira simples e direta de ver o que tem nele?
x

