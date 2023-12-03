library(ggplot2)

# View(mtcars)

str(mtcars)

# link : https://www.nexojornal.com.br/grafico/2023/11/13/Absten%C3%A7%C3%A3o-do-Enem-2023-fica-pr%C3%B3xima-ao-percentual-de-2022
ggplot(
  data=mtcars,
  ) +
  geom_line(aes(x = mpg, y = disp), linewith=1, color="#0287FF")+
  geom_point(aes(x = mpg, y = disp), shape=20, size=4.5, color="#FFFFFF")+
  geom_point(aes(x = mpg, y = disp), shape=19, size=1.5, color = "#0287FF")+
  theme_minimal()




# EXEMPLO Gráfico com HTML ----
library(ggplot2)
library(ggtext)

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  scale_color_manual(
    name = NULL,
    values = c(setosa = "#0072B2", virginica = "#009E73", versicolor = "#D55E00"),
    labels = c(
      setosa = "<i style='color:#0072B2'>I. setosa</i>",
      virginica = "<i style='color:#009E73'>I. virginica</i>",
      versicolor = "<i style='color:#D55E00'>I. versicolor</i>")
  ) +
  labs(
    title = "**Fisher's *Iris* dataset**  
    <span style='font-size:11pt'>Sepal width vs. sepal length for three *Iris*
    species</span>",
    x = "Sepal length (cm)", y = "Sepal width (cm)",
    caption = "<b>Source</b>: *Fisher's Iris dataset*"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_markdown(lineheight = 1.1),
    legend.text = element_markdown(size = 11),
    plot.caption = element_markdown(size = 11)
  )




# gráfico BARRAS ----
dados <- data.frame(
  Categoria = c("A", "B", "C", "D"),
  Valor = c(30, 50, 20, 40)
)


ggplot(dados, aes(x = Categoria, y = Valor, fill = Categoria)) +
  geom_bar(stat = "identity") +
  guides(fill = FALSE) + # Remove a legenda
  scale_fill_manual(
    values = c(
      "A" = "#87CEFA",
      "B" = "#87CEFA",
      "C" = "#87CEFA",
      "D" = "#000080"
      )
    )+
  theme_minimal() 



# COLUNAS - cores Diferentes ----
dados <- data.frame(
  Variavel = rep(c("A", "B", "C", "D"), each = 2),
  Estado = rep(c("Antes", "Depois"), times = 4),
  Valor = c(30, 40, 50, 60, 20, 25, 40, 50)
)

cores <- c(
  "Antes_A" = "#2A6D98", "Depois_A" = "#45B5FD",
  "Antes_B" = "#2A6D98", "Depois_B" = "#45B5FD",
  "Antes_C" = "#2A6D98", "Depois_C" = "#45B5FD",
  "Antes_D" = "#1C4966", "Depois_D" = "#0000A0"
)

ggplot(dados, aes(x = Variavel, y = Valor, fill = paste0(Estado, "_", Variavel))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Gráfico Antes e Depois para Cada Variável", x = "Variável", y = "Valor") +
  scale_fill_manual(values = cores, guide = "none")


