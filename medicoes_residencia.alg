algoritmo "Medicoes_Residencia"

var
   dados: vetor[0..4,0..5] de real
   posicao: vetor[0..5] de real
   maiores: vetor[0..4] de real
   picos: vetor[0..4] de inteiro

   linha, coluna: inteiro
   total: real
   maiorValor, menorValor: real
   diaMaiorPico: inteiro
   quantDias: inteiro
   maiorPicos: inteiro
   resposta: caractere

inicio

   repita

      para linha de 0 ate 4 faca
         picos[linha] <- 0
      fimpara


      para linha de 0 ate 4 faca

         escreval("DIA:", linha)

         para coluna de 0 ate 5 faca

            repita
               escreva("Digite a medicao ", coluna, ": ")
               leia(dados[linha,coluna])

               se dados[linha,coluna] < 180 entao
                  escreval("Valor invalido. Digite um valor maior ou igual a 180V.")
               fimse

            ate dados[linha,coluna] >= 180

         fimpara

      fimpara

      total <- 0
      maiorValor <- dados[0,0]
      menorValor <- dados[0,0]


      para linha de 0 ate 4 faca

         maiores[linha] <- dados[linha,0]

         para coluna de 0 ate 5 faca

            total <- total + dados[linha,coluna]


            se dados[linha,coluna] >= maiorValor entao
               maiorValor <- dados[linha,coluna]
            fimse


            se dados[linha,coluna] <= menorValor entao
               menorValor <- dados[linha,coluna]
            fimse


            se dados[linha,coluna] > maiores[linha] entao
               maiores[linha] <- dados[linha,coluna]
            fimse


            se dados[linha,coluna] > 220 entao
               picos[linha] <- picos[linha] + 1
            fimse

         fimpara

      fimpara

      posicao[0] <- total / 30

      posicao[1] <- maiorValor

      posicao[2] <- menorValor

      posicao[3] <- maiorValor - menorValor

      quantDias <- 0

      para linha de 0 ate 4 faca

         se picos[linha] <> 0 entao
            quantDias <- quantDias + 1
         fimse

      fimpara

      posicao[4] <- quantDias

      maiorPicos <- picos[0]
      diaMaiorPico <- 0

      para linha de 1 ate 4 faca

         se picos[linha] > maiorPicos entao
            maiorPicos <- picos[linha]
            diaMaiorPico <- linha
         fimse

      fimpara

      posicao[5] <- diaMaiorPico

      escreval("")
      escreval("DADOS INFORMADOS:")
      escreval("")

      para linha de 0 ate 4 faca

         escreval("Dia ", linha, ": ")

         para coluna de 0 ate 5 faca
            escreva(dados[linha,coluna], "v")
         fimpara

         escreval("")

      fimpara

      escreval("")
      escreval("RESULTADOS:")
      escreval("")

      escreval("Posicao 0 - Media: ", posicao[0], "v")
      escreval("Posicao 1 - Maior voltagem: ", posicao[1], "v")
      escreval("Posicao 2 - Menor voltagem: ", posicao[2], "v")
      escreval("Posicao 3 - Diferenca: ", posicao[3], "v")
      escreval("Posicao 4 - Dias com picos: ", posicao[4])
      escreval("Posicao 5 - Dia com mais picos: ", posicao[5])


      escreval("")
      escreval("MAIOR MEDICAO DE CADA DIA:")
      escreval("")

      para linha de 0 ate 4 faca
         escreval("Dia ", linha, ": ", maiores[linha], "v")
      fimpara


      escreval("")
      repita
         escreva("Deseja fazer um novo levantamento? (S/N): ")
         leia(resposta)
      ate (resposta = "S") ou (resposta = "s") ou (resposta = "N") ou (resposta = "n")

      escreval("")

   ate (resposta = "N") ou (resposta = "n")


   escreval("Programa encerrado!")

fimalgoritmo
