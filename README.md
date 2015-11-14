# guiafocalinux
Guia Foca Linux - Linux Guide in Portuguese

Esse é o repositório dos fontes do Guia Foca Linux.  A idéia é trazer o modelo "agile" pra atualização do mesmo.  Viu um artigo que pode ser melhorado?  Falta um assunto que conhece?  Viu alguma parte desatualizada?  Basta fazer um fork, alterar, commit, e enviar um pull request pra ter o guia atualizado.

Não deixe para amanhã a colaboração de um guia tão importante para a comunidade brasileira de usuários GNU/Linux e BSD (sim, eles também podem se beneficar com o conhecimento contido aqui).

== Como gerar o guia ==

O guia é feito especificamente para ser gerado em Debian, pois faz uso dos templates DTD do Debiandocs.
Se estiver usando um sistema Debian ou derivado desse, como Ubuntu, basta instalar o pacote "debiandoc-sgml".

apt install debiandoc-sgml

Para gerar o documento, basta rodar o comando make.

make
