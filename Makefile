PACKAGES := index.html
PACKAGES += index.en.pdf
PACKAGES += index.en.dvi

SRC := index.sgml
SRC += Iniciante/ajuda.sgml
SRC += Iniciante/apendice.sgml
SRC += Iniciante/basico.sgml
SRC += Iniciante/comandos-arquivo.sgml
SRC += Iniciante/comandos-contas.sgml
SRC += Iniciante/comandos-diretorio.sgml
SRC += Iniciante/comandos-diversos.sgml
SRC += Iniciante/comandos-rede.sgml
SRC += Iniciante/configurando.sgml
SRC += Iniciante/discos.sgml
SRC += Iniciante/impressao.sgml
SRC += Iniciante/introducao.sgml
SRC += Iniciante/migrando.sgml
SRC += Iniciante/permissoes.sgml
SRC += Iniciante/redir.sgml
SRC += Iniciante/run.sgml
SRC += Iniciante/x11.sgml
SRC += Intermediario/aplicativos.sgml
SRC += Intermediario/bootloaders.sgml
SRC += Intermediario/compactadores.sgml
SRC += Intermediario/compilacao.sgml
SRC += Intermediario/debian.sgml
SRC += Intermediario/dpkg.sgml
SRC += Intermediario/etc.sgml
SRC += Intermediario/hardware.sgml
SRC += Intermediario/internet.sgml
SRC += Intermediario/kernel.sgml
SRC += Intermediario/log.sgml
SRC += Intermediario/manutencao.sgml
SRC += Intermediario/personalizacao.sgml
SRC += Intermediario/rede.sgml
SRC += Intermediario/tasks.sgml
SRC += Avancado/apache/Apache-acesso.sgml
SRC += Avancado/apache/Apache-DSO.sgml
SRC += Avancado/apache/Apache-errordocument.sgml
SRC += Avancado/apache/Apache-exemplo.sgml
SRC += Avancado/apache/Apache-INDEX.sgml
SRC += Avancado/apache/Apache-Introducao.sgml
SRC += Avancado/apache/Apache-log.sgml
SRC += Avancado/apache/Apache-proxy.sgml
SRC += Avancado/apache/Apache-ssl.sgml
SRC += Avancado/apache/Apache-vhosts.sgml
SRC += Avancado/apache/http-codigos.sgml
SRC += Avancado/conf-rede/CFGRede-INDEX.sgml
SRC += Avancado/conf-rede/CFGRede-Introducao.sgml
SRC += Avancado/criptografia/Cripto-INDEX.sgml
SRC += Avancado/criptografia/Cripto-Introducao.sgml
SRC += Avancado/cvs/CVS-Cliente.sgml
SRC += Avancado/cvs/CVS-CVSROOT.sgml
SRC += Avancado/cvs/CVS-Exemplo.sgml
SRC += Avancado/cvs/CVS-INDEX.sgml
SRC += Avancado/cvs/CVS-Introducao.sgml
SRC += Avancado/cvs/CVS-Projeto.sgml
SRC += Avancado/cvs/CVS-Servidor.sgml
SRC += Avancado/gerenc-contas/contas-INDEX.sgml
SRC += Avancado/gerenc-contas/contas-Introducao.sgml
SRC += Avancado/git/git-doc.sgml
SRC += Avancado/git/git-INDEX.sgml
SRC += Avancado/identd/Ident-INDEX.sgml
SRC += Avancado/identd/Ident-Introducao.sgml
SRC += Avancado/iptables-firewall/iptables-chains.sgml
SRC += Avancado/iptables-firewall/iptables-exemplo.sgml
SRC += Avancado/iptables-firewall/iptables-INDEX.sgml
SRC += Avancado/iptables-firewall/iptables-Introducao.sgml
SRC += Avancado/iptables-firewall/iptables-mangle.sgml
SRC += Avancado/iptables-firewall/iptables-matches.sgml
SRC += Avancado/iptables-firewall/iptables-nat.sgml
SRC += Avancado/iptables-firewall/iptables-outras-opcoes.sgml
SRC += Avancado/iptables-firewall/iptables-path.sgml
SRC += Avancado/pop3/pop3-INDEX.sgml
SRC += Avancado/pop3/pop3-Introducao.sgml
SRC += Avancado/restr-seguranca/restricoes-INDEX.sgml
SRC += Avancado/restr-seguranca/restricoes-Introducao.sgml
SRC += Avancado/samba/SAMBA-acesso.sgml
SRC += Avancado/samba/SAMBA-Arquivo.sgml
SRC += Avancado/samba/SAMBA-Cliente.sgml
SRC += Avancado/samba/SAMBA-Dominio.sgml
SRC += Avancado/samba/SAMBA-exemplo.sgml
SRC += Avancado/samba/SAMBA-impressao.sgml
SRC += Avancado/samba/SAMBA-INDEX.sgml
SRC += Avancado/samba/SAMBA-Introducao.sgml
SRC += Avancado/samba/SAMBA-NameResolv.sgml
SRC += Avancado/samba/SAMBA-senhas.sgml
SRC += Avancado/samba/SAMBA-Servidor.sgml
SRC += Avancado/samba/SAMBA-Timeserver.sgml
SRC += Avancado/samba/SAMBA-uidmap.sgml
SRC += Avancado/samba/SAMBA-Workgroup.sgml
SRC += Avancado/ssh/ssh-clientes.sgml
SRC += Avancado/ssh/ssh-INDEX.sgml
SRC += Avancado/ssh/ssh-Introducao.sgml
SRC += Avancado/ssh/ssh-servidor.sgml
SRC += Avancado/systemd/systemd-doc.sgml
SRC += Avancado/systemd/systemd-INDEX.sgml
SRC += Avancado/telnet/telnet-INDEX.sgml
SRC += Avancado/telnet/telnet-Introducao.sgml

all: $(PACKAGES)

index.html: html 

html: $(SRC)
	debiandoc2html -C -l en.UTF-8 -b html index.sgml
	mv html.html html

index.en.pdf: $(SRC)
	debiandoc2pdf -C -l en.UTF-8 index.sgml

index.en.dvi: $(SRC)
	debiandoc2dvi -C -l en.UTF-8 index.sgml

clean:
	rm -rf $(PACKAGES)
