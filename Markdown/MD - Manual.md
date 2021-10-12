[//]:# (Autor.............: Henrique Campos Jonck - 17 Anos        )
[//]:# (Data de Inicio....: 08/10/2021                             )
[//]:# (Guia de Linguagem.: MARKDOWN                               )
[//]:# (-----------------------------------------------------------)
[//]:# (Este guia foi criado com o intuito de estudos e anotações. )


<!--! TITULOS -->

# TITULO NIVEL 1
## TITULO NIVEL 2
### TITULO NIVEL 3
#### TITULO NIVEL 4
##### TITULO NIVEL 5
###### TITULO NIVEL 6


<!--! NEGRITO -->
**NEGRITO**
__NEGRITO__

<!--! ITALICO -->
*ITALICO*
_ITALICO_

<!--! RISCADO -->
~~RISCADO~~

<!--! LINHAS HORIZONTAIS -->
<!--: Linhas horizontais funcionam apenas após um TITULO. -->

# Linha 1
---

# Linha 2
***

<!--! LISTAS -->

<!--? LISTA DE MARCADORES -->

* Item 
- Item

* Item
    * Sub-Item

<!--? LISTA NUMERADA -->
<!--: O numero utilizado nestes marcadores não mporta visto que a enumeração continuará na ordem que deve. -->

0. Item 1
0. Item 2
0. Item 3
    0. Item 3.1

<!--? LISTA DE TAREFAS -->

- [ ] Item Desmarcado
- [X] Item Marcado

<!--! LINKS -->

<!--? LINK CLICAVEL -->
<!--: Definimos um texto que ficará marcado em azul e apontará para o link definido. -->

[TEXTO CLICAVEL](URL)
[YOUTUBE](www.youtube.com)

<!--? LINK DIRETO -->
<!--: Apenas escreve o link definido no documento. -->
<LINK_DIRETO>
<www.github.com>


<!--! IMAGENS -->
<!--: Pode ser feito de forma automatica em alguns locais se arrastarmos uma imagem para cima do arquivo Markdown. -->
<!--: Definimos um texto alternativo caso a imagem não possa ser carregada e tambem o caminho para o arquivo da imagem. -->

![TEXTO ALTERNATIVO PARA A IMAGEM](CAMINHO_DA_IMAGEM)

<!--! CITAÇÃO -->

> CITAÇÃO


<!--! CÓDIGOS -->

<!--? CODIGO INLINE -->

AQUI CONTEM UM `CODIGO`

<!--? CÓDIGO EM BLOCO -->

```
    BLOCO DE CODIGO 1
```
~~~
    BLOCO DE CODIGO 2
~~~


<!--? >
~~~javascipt
    CODIGO EM JAVASCRIPT
    window.alert("Bom dia");
~~~

~~~php
    CODIGO EM PHP
~~~
~~~html
    <h1>CODIGO EM HTML</h1>
~~~


COLUNA    | COLUNA       | COLUNA
:---------|:------------:|--------:
ESQUERDA  | CENTRALIZADO | DIREITA
LINHA     | LINHA        | LINHA
