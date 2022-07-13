# comunicacao-entre-widgets-Flutter

### Este repositório trata das diferentes formas de comunicação entre widgets no Flutter.
### Para utilizarmos informações de um componente em outro, podemos utilizar comunicação direta, indireta e inherited widget.
### Ao rodar este projeto aparecerão 3 contadores, cada um construído utilizando uma forma de comunicação.

## Comunicação direta:

#### O componente filho recebe parâmetros a partir do construtor. Este componente, ao ser construído no componente pai, recebe esses parâmetros. Quem controla o estado da aplicação é o pai.
#### A informação é passada do componente pai para o componente filho.

## Comunicação indireta:

#### O componente pai passa para o componente filho uma função. No momento em que ocorrer o evento, a ação será feita a partir de comunicação indireta, onde o componente filho chamará o componente pai.
#### O componente pai tem controle do estado e define a função. Contudo, quem sabe o momento certo de chamar essa função não é o componente pai, e sim, o filho.
#### A função é passada como parâmetro para o filho e o filho, ao detectar o evento (pressionar o botão) chamará o pai.

## Inherited Widget

#### O inherited widget será um componente dentro da árvore de componentes. A partir dele, conseguimos ter uma comunicação direta a partir de vários componentes.
#### Funciona a partir de contextos, da árvore de contextos, a partir disso ocorrerá a comunicação.
#### Acessaremos a partir do 'provider', método estático 'of'.