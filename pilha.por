
programa {
  //Variável global topo guarda a posição do último número armazenado na pilha.
  inteiro topo=-1
  //Declaração da pilha de 6 posições
  inteiro pilha[6]
  funcao inicio() {
     push(2)
     push(8)
     push(7)
     mostraPilha()
  }
  //Adiciona item na pilha (push)
  funcao push(inteiro numero){
    //Só adiciona númera a pilha se não estiver cheia
    se(topo<=5){
      //Incrementa o ponteiro 
      topo++
      pilha[topo]=numero
    }senao{
      escreva("A pilha está cheia!\n")
    }
  }
  //Remove item da pilha
  funcao pop(){
    se(topo>=0){
      topo--
    }senao{
      escreva("A pilha está vazia.\n")
    }
  }
  funcao mostraPilha(){
    se(topo==-1){
      escreva("A pilha está vazia.\n")
    }senao{
      para(inteiro i=topo;i>=0;i--){
        escreva(pilha[i],"\n")
      }
      escreva("----------\n")
    }
  }
}
