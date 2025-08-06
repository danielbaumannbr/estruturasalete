//Fila 
programa {
    //Variaveis globais
    cadeia fila[10]
    inteiro inicio=0,fim=-1,tamanho=0
  funcao inicio() {
    inserir("Eloísa")
    inserir("Lincoln")
    inserir("Elton")
    inserir("Juarez")
    mostraFila()
    remover()
    remover()
    inserir("Janete")
    mostraFila()
  }
  //Insere pessoas na fila
  funcao inserir(cadeia nome){
    se(tamanho<10){
      fim=(fim+1)%10
      fila[fim]=nome
      tamanho++
      escreva(nome," foi inserido na fila.\n")
    }senao{
      escreva("Está lotado!\n")
    }
  }
  //Remove pessoa da fila
  funcao remover(){
    se(tamanho>0){
      escreva("Atendendo ",fila[inicio],"\n")
      inicio=(inicio+1)%10
      tamanho--
    }senao{
      escreva("A fila está vazia!\n")
    }
  }
  funcao mostraFila(){
    //Variavel local
    inteiro posicao=inicio
    para(inteiro i=0;i<tamanho;i++){
      escreva(fila[posicao]," ")
      posicao=(posicao+1)%10
    }
    escreva("\n")
  }
}
