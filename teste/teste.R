# Pesuisando detalhes ----
# Carregue o pacote ggplot2
library(ggplot2)
library(extrafont)

# Crie um conjunto de dados de exemplo
dados <- data.frame(
  x = seq(0, 100, length.out = 10),  
  y = seq(0, 1, length.out = 10)^(5.5) 
)

g<-
ggplot(
  dados, aes(x = x, y = y),
  # width = 1080, height = 1350, units = "px"
  ) +
   # ADICIONANDO CAMADA EM DESTAQUE
   annotate(
     "rect",
     xmin = 0, xmax = 50,
     ymin = 0, ymax = Inf,
     fill = "#ececec", alpha = 0.3
     ) +
   annotate(
     "rect",
     xmin = 90, xmax = 100,
     ymin = 0, ymax = Inf,
     fill = "#ececec", alpha = 0.3
     ) +
   geom_line(
      colour = "#008cff",
      linewidth = 1.5
   ) +
  scale_x_continuous(
    breaks = seq(0, 100, by = 10), 
    minor_breaks = pretty(dados$x, n = 9),
    labels = c("1", seq(10, 100, by = 10))
    ) +
  scale_y_continuous(
    expand = c(0, 0)
  ) +
  
  labs(
    title = "% do total de deduções que vai \npara cada grupo de declarantes ",
    subtitle = "Por centil, no Imposto de Renda de 2022") +
   theme(
      plot.background = element_rect(fill = "#d9d9d9"),
      panel.background = element_rect(
         fill = "#d9d9d9",
         colour = "#d9d9d9"
      ),
      panel.grid.major.y = element_line(colour = "black", linetype = "dashed"),
      panel.grid.minor = element_blank(),
      panel.grid.major.x = element_blank(),
      axis.text.y = element_text(vjust = -.7),
      axis.title.y = element_text(size = 10),
      axis.line.x.bottom = element_line(linewidth = 1),
      axis.ticks.x = element_line(linewidth = .5),
      axis.ticks.y = element_blank(),
      plot.title = element_text(color = "#333333", hjust = -1, vjust = 15),
      plot.subtitle = element_text(color = "#999999",  hjust = -1.89, vjust = 19.5),
      plot.margin = margin(t = 2, b = 1,r=0.5, unit = "cm"),
   ) 

g

 ggplot2::ggsave(plot = g,
   "graficos/recrianndo/01/nexografico-final.png", width = 1080, height = 1350, units = "px")
