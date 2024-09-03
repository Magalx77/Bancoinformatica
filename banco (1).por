programa {
  funcao inicio() {
    inteiro menu = 1
    real saldo = 0
    cadeia extrato = ""
    real deposito
    real saque, investimento = 0
    real rendimento = 0
    inteiro meses =0
    cadeia controle
    enquanto(menu != 0){
  escreva("| SALDO = R$", saldo, "\n")    
  escreva("|===========MENU===========|\n")
  escreva("| 1- SAQUE                 |\n")
  escreva("| 2- DEPOSITO              |\n")
  escreva("| 3- EXTRATO               |\n")
  escreva("| 4- SALDO                 |\n")
  escreva("| 0- SAIR                  |\n")
  escreva("| =========================|\n")
  escreva("| ESCOLHA: ")
  leia(menu)
  limpa()

  escolha(menu) {
    caso 1:
    escreva("digite um valor para sacar: ")
    leia(saque)
    enquanto(saque <=0) {
      escreva("valor invalido! digite novamente: ")
      leia(saque)
    }
    se(saque > saldo) {
      escreva("não autrizado!\n")
    }
    senao{
      saldo = saldo - saque
      escreva("saque realizado com sucesso\n")
      extrato = extrato + "SAQUE---------- R$" + saque + "\n"
    }

    pare
    caso 2:
    escreva("digite um valor para depósito:1")
    leia(deposito)
    enquanto(deposito <= 0) {
      escreva("valor imvalido! digite novamente: ")
    }
    saldo= saldo + deposito
    escreva("deposito realizado com sucesso!\n")
    
  

    pare
    caso 4: 
    escreva(extrato)
    escreva("Aperte ENTER para continuar")
    leia(controle)
    limpa()
    pare
    caso 5:
    escreva("Digite a quantidade do investimento: ")
    leia (investimento)
    escreva("Digite a quantidade de meses que deseja investir:")
    leia (meses)
    se(saldo >= investimento){
      para(inteiro contador = 1;contador <= meses; contador++){
        rendimento = investimento * 1.02
        investimento = rendimento
      }
      escreva(meses, "meses se passaram!\n")
      escreva("Seu rendimento foi de: ", investimento,"\n")
      saldo = saldo + investimento
    }
    senao{
      escreva("Não autorizado!\n")
    }



       pare
     }
    }
  }
}
