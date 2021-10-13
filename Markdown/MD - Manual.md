<!--| Autor.............: Henrique Campos Jonck - 17 Anos                                 |-->
<!--| Data de Inicio....: 08/10/2021                                                      |-->
<!--| Guia de Linguagem.: Markdown                                                        |-->
<!------------------------------------------------------------------------------------------->
<!--| Este guia foi criado com o intuito de estudos e anotações.                          |-->
<!--| Escrito no editor de código Visual Studio Code.                                     |-->
<!--| Altamente recomendavel que se utilize a extensão "Better Comments" de "Aaron Bond". |-->


<I+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++I 01 >
<!--! TITULOS -->

# TITULO NIVEL 1
## TITULO NIVEL 2
### TITULO NIVEL 3
#### TITULO NIVEL 4
##### TITULO NIVEL 5
###### TITULO NIVEL 6


<I+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++I 01 >
<!--! FORMATAÇÕES -->

<!--* NEGRITO -------------------------------------------------------------------------------------------------------------------------->
<!--TODO: SINTAXE -->
**NEGRITO**
 __NEGRITO__

<!--* ITALICO -------------------------------------------------------------------------------------------------------------------------->
<!--TODO: SINTAXE -->
*ITALICO*
_ITALICO_

<!--* RISCADO -------------------------------------------------------------------------------------------------------------------------->
<!--TODO: SINTAXE -->
~~RISCADO~~


<I+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++I 01 >
<!--! LINHAS HORIZONTAIS -->
<!--: Linhas horizontais funcionam apenas após um TITULO. -->

<!--TODO: SINTAXE -->
# ESTILO 1
---

# ESTILO 2
***


<I+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++I 01 >
<!--! LISTAS -->

<!--* LISTA DE MARCADORES -------------------------------------------------------------------------------------------------------------->
<!--: Consiste em uma lista com marcadores em formato de bolinha. -->

<!--TODO: SINTAXE -->
* Item 
- Item
    * Sub-Item

<!--* LISTA NUMERADA ------------------------------------------------------------------------------------------------------------------->
<!--: Consiste em uma lista com marcadores numerados que seguem uma ordem natural. -->
<!--: O numero utilizado nestes marcadores não importa visto que a enumeração continuará na ordem que deve. -->

<!--TODO: SINTAXE -->
0. Item 1
0. Item 2
    0. Item 2.1

<!--* LISTA DE TAREFAS ----------------------------------------------------------------------------------------------------------------->
<!--: Consiste em uma lisca com caixas de seleção. -->

<!--TODO: SINTAXE -->
- [ ] Item Desmarcado
- [X] Item Marcado


<I+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++I 01 >
<!--! LINKS -->

<!--* LINK CLICAVEL -------------------------------------------------------------------------------------------------------------------->
<!--: Definimos um texto que ficará marcado em azul e apontará para o link definido. -->

<!--TODO: SINTAXE -->
[TEXTO](URL)

<!--TODO: EXEMPLO -->
[YOUTUBE](www.youtube.com)

<!--* LINK DIRETO ---------------------------------------------------------------------------------------------------------------------->
<!--: Apenas escreve o link definido no documento. -->

<!--TODO: SINTAXE -->
<URL>

<!--TODO: SINTAXE -->
<www.github.com>


<I+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++I 01 >
<!--! IMAGENS -->
<!--: Pode ser feito de forma automatica em alguns locais se arrastarmos uma imagem para cima do arquivo Markdown. -->
<!--: Definimos um texto alternativo caso a imagem não possa ser carregada e tambem o caminho para o arquivo da imagem. -->

<!--TODO: SINTAXE -->
![TEXTO ALTERNATIVO](CAMINHO_DA_IMAGEM)


<I+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++I 01 >
<!--! CITAÇÃO -->

<!--TODO: SINTAXE -->
> CITAÇÃO


<I+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++I 01 >
<!--! CÓDIGOS -->

<!--* CODIGO INLINE -------------------------------------------------------------------------------------------------------------------->
<!--: Consiste em uma caixa dentro do texto que contem o código. -->

<!--TODO: SINTAXE -->
AQUI CONTEM UM `CODIGO`

<!--*?* CÓDIGO EM BLOCO ---------------------------------------------------------------------------------------------------------------->
<!--: Consiste em um pedaço inteiro dedidaco a um codigo. -->

<!--TODO: SINTAXE -->
```
    BLOCO DE CODIGO 1
```
~~~
    BLOCO DE CODIGO 2
~~~

<!--*?* CÓDIGO DE LINGUAGEM ------------------------------------------------------------------------------------------------------------>
<!--: Consiste em um pedaço de código com uma linguagem especifica, colorindo assim os comandos. -->

<!--TODO: SINTAXE -->
```NOME_LINGUAGEM
    BLOCO DE CÓDIGO
```

<!--TODO: EXEMPLOS -->
~~~HTML
    <H1>TITULO</H1>
~~~

```C
    printf("Ola Mundo");
```


<I+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++I 01 >
<!--! TABELAS -->

COLUNA    | COLUNA       | COLUNA
:---------|:------------:|--------:
ESQUERDA  | CENTRALIZADO | DIREITA
LINHA     | LINHA        | LINHA

<!--! MENSÕES -->

<!--? USUÁRIOS -->
@USUÁRIO

<!--? ISSUES E PULL REQUESTS -->
#1

<!--! ESCAPAR CARACTERES -->

\##

<!--! FORMULAS MATEMATICAS -->
$$
    3 + 4
$$

<!--! EMOJIS -->

:smile:
