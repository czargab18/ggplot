# Carregue os pacotes
library(dplyr)
library(ggplot2)

# Expanda o banco de dados
meu_banco_dados <- tibble(
  ID = 1:100,
  Nome = sample(c("Alice", "Bob", "Charlie", "David", "Eva", "Frank", "Grace", "Hank", "Ivy", "Jack"), 100, replace = TRUE),
  Idade = sample(18:60, 100, replace = TRUE),
  Salario = rnorm(100, mean = 50000, sd = 10000)
)

# Crie um histograma da idade
histograma_idade <- ggplot(meu_banco_dados, aes(x = Idade)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Histograma da Idade", x = "Idade", y = "Frequência")

# Crie um gráfico de barras para contar a frequência dos nomes
grafico_barras_nome <- ggplot(meu_banco_dados, aes(x = Nome)) +
  geom_bar(fill = "green", color = "black") +
  labs(title = "Gráfico de Barras - Frequência dos Nomes", x = "Nome", y = "Frequência") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Crie um gráfico de linhas para mostrar a variação do salário ao longo do ID
grafico_linhas_salario <- ggplot(meu_banco_dados, aes(x = ID, y = Salario)) +
  geom_line(color = "red") +
  labs(title = "Gráfico de Linhas - Variação do Salário", x = "ID", y = "Salário")

# Crie um gráfico de dispersão para mostrar a relação entre idade e salário
grafico_dispersao <- ggplot(meu_banco_dados, aes(x = Idade, y = Salario, color = Nome)) +
  geom_point() +
  labs(title = "Gráfico de Dispersão - Idade vs. Salário", x = "Idade", y = "Salário")

# Exiba os gráficos
print(histograma_idade)
print(grafico_barras_nome)
print(grafico_linhas_salario)
print(grafico_dispersao)
