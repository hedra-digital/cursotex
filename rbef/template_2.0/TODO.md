ToDoList
========

* Modelo básico com memoir✓ 
* Pacotes necessários✓
* Balancear colunas✓
* Head✓
* Primeira página✓
* Medidas as margens
* Integração com scielostyle.sty

* Metadados

* Criar forma de colocar uma imagem numa área ocupando duas colunas
* Criar primeiro arquivo com exemplo

* Acertar as notas
\usepackage[outer=2cm,inner=1.3cm,bottom=3cm,top=2.5cm]{geometry}

* Acertar boxes
%% Para quadros com fundo em equações e outros elementos
\usepackage[framemethod=tikz]{mdframed}
\surroundwithmdframed[backgroundcolor=Lavender]{verbatim}
%\surroundwithmdframed[backgroundcolor=Lavender]{equation}
%\surroundwithmdframed[backgroundcolor=Lavender]{displaymath}
%\surroundwithmdframed[backgroundcolor=Lavender]{align}
%\surroundwithmdframed[backgroundcolor=Lavender]{align*}

* Como evitar duas colunas
\usepackage[unskipbreak,autobase]{cuted} %unskipbreak and autobase correct "disappearing text" when widetext is used on the right column, but leave a space. 