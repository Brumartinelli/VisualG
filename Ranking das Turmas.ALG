//Função: Aplicação para efetuar o cadastro das notas
//Cada turma terá a sua média, a partir das notas dos alunos
//No final, será efetuado um ranking das turmas de maior média
algoritmo "Olimpíadas Conhecimentos Gerais"
var
   opcao: inteiro
   nome_turma: vetor[1..100] de caractere
   num_alunos: vetor[1..100] de inteiro
   media: vetor[1..100] de real
   total_turmas, i, j: inteiro
   nota, soma_notas: real
   temp_nome: caractere
   temp_media: real
inicio
   total_turmas <- 0
   opcao <- 0

   enquanto opcao <> 3 faca
      escreval("==================================")
      escreval("Olimpíadas de Conhecimentos Gerais")
      escreval("==================================")
      escreval("1 - Cadastrar notas da Turma")
      escreval("2 - Visualizar ranking das turmas")
      escreval("3 - Sair")
      escreval("==================================")
      escreva("Digite a opção desejada: ")
      leia(opcao)

      escolha opcao
      caso 1
         // Cadastro
         total_turmas <- total_turmas + 1
         escreva("Informe o nome da turma: ")
         leia(nome_turma[total_turmas])
         escreva("Informe a quantidade de alunos da turma: ")
         leia(num_alunos[total_turmas])

         soma_notas <- 0
         para i de 1 ate num_alunos[total_turmas] faca
            escreva("Informe a nota do Aluno ", i, ": ")
            leia(nota)
            soma_notas <- soma_notas + nota
         fimpara

         // Média
         media[total_turmas] <- soma_notas / num_alunos[total_turmas]

         escreval("Cadastro da turma realizado com sucesso!")
         escreval("Pressione qualquer tecla para voltar ao menu...")
         leia(opcao)

      caso 2
         // Ranking
         para i de 1 ate total_turmas - 1 faca
            para j de i + 1 ate total_turmas faca
               se media[i] < media[j] entao

                  temp_nome <- nome_turma[i]
                  nome_turma[i] <- nome_turma[j]
                  nome_turma[j] <- temp_nome

                  temp_media <- media[i]
                  media[i] <- media[j]
                  media[j] <- temp_media
               fimse
            fimpara
         fimpara

         escreval("=========== RANKING DAS TURMAS ===========")
         para i de 1 ate total_turmas faca
            escreval("Classificação: ", i, "º Colocado")
            escreval("Nome da turma: ", nome_turma[i])
            escreval("Média total: ", media[i])
            escreval("=========================================")
         fimpara

         escreval("Pressione qualquer tecla para voltar ao menu...")
         leia(opcao)

      caso 3
         escreval("Programa Encerrado")
      outrocaso
         escreval("Opção inválida! Tente novamente.")
      fimescolha
   fimenquanto
fimalgoritmo
