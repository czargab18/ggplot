# Pesuisando detalhes ----
# Carregue o pacote ggplot2
library(ggplot2)

# Crie um conjunto de dados de exemplo
dados <- data.frame(
  x = seq(0, 100, length.out = 10),  
  y = seq(0, 1, length.out = 10)^(5.5) 
)

ggplot(dados, aes(x = x, y = y)) +
   # ADICIONANDO CAMADA EM DESTAQUE
   annotate("rect", xmin = 0, xmax = 50, ymin = 0, ymax = Inf, fill = "#ececec", alpha = 0.3) +
   annotate("rect", xmin = 90, xmax = 100, ymin = 0, ymax = Inf, fill = "#ececec", alpha = 0.3) +
   geom_line(
      colour = "#008cff",
      linewidth = 1.5
   ) +
  scale_x_continuous(breaks = seq(0, 100, by = 10), 
                     labels = c("1", seq(10, 100, by = 10))) +
   theme(
      plot.background = element_rect(fill = "#d9d9d9"),
      panel.background = element_rect(
         fill = "#d9d9d9",
         colour = "#d9d9d9"
      ),
      panel.grid.major.y = element_line(colour = "black", linetype = "dashed"),
      panel.grid.minor = element_blank(),
      panel.grid.major.x = element_blank(),
      axis.text.y = element_text(hjust = 1,vjust = -0.8),
      axis.title.y = element_text(size = 10),
   ) 