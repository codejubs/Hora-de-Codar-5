programa
{
	  cadeia usuario 
    inteiro senha //senha do banco/cartao = 3589
   	real saldo = 150.00// Float

	funcao inicio() {
  
    escreva("Como você se chama? ")
    leia(usuario)
    escreva("Olá " , usuario , " é um prazer ter você aqui! ")
	  opcoes()
	}

  funcao opcoes(){

    inteiro opcao 

    escreva("\n\n---Escolha uma opção---\n")
		escreva("1. Ver Saldo\n")
    escreva("2. Consultar Extrato\n")
    escreva("3. Fazer Saque\n")
		escreva("4. Fazer Depósito\n") 
    escreva("5. Realizar Transferência\n") 
		escreva("6. Sair\n")
		leia(opcao)
     
      escreva("\nA opção selecionada foi: " + opcao + "\n")
      
      escolha(opcao){
      caso 1:
      verSaldo()

      caso 2:
      verExtrato()

      caso 3:
      Saque()

      caso 4:
      fazerDeposito()

      caso 5:
      FazerTransferencia()

      caso 6:
      sair()
      pare

      caso contrario:
      erro()
      }
  

  }

	funcao verSaldo(){
      escreva("Informe a senha: \n")
      leia(senha)
      se(senha == 3589){
      escreva("\n---Seu saldo atual é: ", saldo , " ---\n")
	    opcoes()
      }
      senao{
        escreva("Insira uma senha válida!")
        verSaldo()
      }
	    
	}
   
   funcao verExtrato(){
    escreva("Informe a senha: \n")
      leia(senha)

      se(senha == 3589){
      escreva("\n----Extrato Bancário----\n")
      escreva("-Deposito- R$ 4,000 Reais\n")
      escreva("-Compra- Eletrônicos- R$ 3,000 Reais\n")
      }
      opcoes()
      }

    funcao fazerDeposito() {

		real deposito

		escreva("\nInforme a senha: \n")
    leia(senha)

    se(senha == 3589){
    escreva("Qual o valor para depósito? ")
		leia(deposito)
    }
    senao{
    escreva("Insira uma senha válida!")
    fazerDeposito()
    }
		
		se (deposito <= 0){
			escreva("Operação não autorizada!\n")
			opcoes()

		} senao {
			saldo = saldo + deposito
			verSaldo()
		}
	}
    funcao Saque(){
	
		real saque
    
    escreva("Informe a senha: \n")
    leia(senha)

    se(senha == 3589){
    escreva("\nQual o valor para saque? ")
		leia(saque)
    }
    senao{
    escreva("Insira uma senha válida!")
    Saque()
    }
	
    se(saque > 150){
    escreva("Operação não autorizada, Saldo insuficiente!")
    opcoes()
    }

		senao se(saque <= 0){
	  escreva("Operação não autorizada, Saldo insuficiente!\n")
	  opcoes()

		}
    senao {
			saldo = saldo - saque
			verSaldo()
		}
	}

   funcao FazerTransferencia(){
    inteiro transferencia

    escreva("Informe a senha: \n")
    leia(senha)

    se(senha == 3589){
    escreva("\nQual valor da transferência? ")
    leia(transferencia)
    }
    senao{
    escreva("Insira uma senha válida!")
    transferencia()
    }
    se(transferencia > 150 ou transferencia <= 0){
    escreva("Operação não autorizada.\nSaldo insuficiente!\n")
    opcoes()
    }
    senao{
     saldo = saldo - transferencia
    verSaldo()
    }
    opcoes()
    }

    funcao erro() {
		escreva("Opção Inválida, escolha uma das opções abaixo:")
		opcoes()
	}

    funcao sair(){
		escreva("Querido(a) " , usuario , ", Agradecemos por utilizar nossos serviços!")
	}
   }




}
