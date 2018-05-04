# guiafocalinux
Guia Foca GNU/Linux - GNU/Linux Guide in Portuguese
===========================================

Esse é o repositório dos fontes do Guia Foca GNU/Linux.  A idéia é
trazer o modelo "agile" pra atualização do mesmo.  Viu um artigo que
pode ser melhorado?  Falta um assunto que conhece?  Viu alguma parte
desatualizada?  Basta fazer um fork, alterar, commit, e enviar um pull
request pra ter o guia atualizado.

Não deixe para amanhã a colaboração de um guia tão importante para
a comunidade brasileira de usuários GNU/Linux e BSD (sim, eles também
podem se beneficar com o conhecimento contido aqui).

Como gerar o guia
=================

O guia é feito especificamente para ser gerado em Debian, pois faz uso
dos templates DTD do Debiandocs.
Se estiver usando um sistema Debian ou derivado desse, como Ubuntu,
basta instalar os pacotes "debiandoc-sgml" e "make".

Se não tiver suporte à língua portuguesa, instalte também o pacote "language-pack-pt".

```
apt install debiandoc-sgml make texlive-lang-portuguese language-pack-pt
```

Os demais pacotes necessários deve ser baixados como dependências.
Para gerar o documento, basta rodar o comando make.

```
make
```

Web (versão online)
===================
http://helioloureiro.github.io/guiafocalinux

Não Debian
==========

Não é necessário gerar o documento para contribuir.  Se não tiver um
ambiente Debian, o que pode ser feito com Docker, pode apenas atualizar
o documento que quiser e enviar.  Qualquer problema de formatação, 
arrumamos durante a revisão.


Nota de copyright
=================
O Guia Foca GNU/Linux é de autoria de Gleydson Mazioli da Silva
<gleydson@guiafoca.org> e distribuído sob a licença GFDL 1.2.
