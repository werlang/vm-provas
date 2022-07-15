# VM-config Repo

Este repositorio contem os scripts necessarios para usar a vm de provas.

Esta VM funciona quase sozinha. Para usar em um novo lab, so copiem a imagem da VM nos pcs. A cada vez que a VM inicia, tem um cronjob que sincroniza os scripts e a whitelist com o repositorio, Assim qualquer atualizacao nao precisa atualizar cada pc.

## Funcionalidades

* Bloqueio de quais quer dispositivos externos (impede o mount).
* Bloqueio de conexao com a internet (exceto dominios na whitelist).
* Whitelist com sites permitidos o acesso a internet, como por exemplo o site do moodle para entrega da atividade, sites com documentacao, etc.
* Script que permite que o professor limpe a home do aluno, acabando com qualquer arquivo residual apos as avaliacoes.

## Arquivos

Todos scripts e whitelist estao na past /home/professor/vm-config, que tambem e o caminho deste repositorio

### boot.sh

Cronjob chama esse script quando reinicia a maquina.

### restore.sh

Restaura acesso normal a internet e dispositivos externos

### block.sh

Bloquei acesso a dispositivos externos e a internet, com excessao dos sites descritos em `whitelist.txt`.

### clean.sh

Remove a pasta do aluno, e substitui ela com o conteudo de `aluno-home.zip`, que e a pasta do aluno vazia, e com configuracoes "zeradas".

Tambem limpa a pasta do apache, para caso a prova seja feita na linguagem php.


### sync.sh

Faz um pull neste repositorio. Este e o script que possibilita a sincronizacao automatica de atualizacoes dos scripts e whitelist a cada reboot da maquina.

### whitelist.txt

Aqui deve conter uma lista de dominios, separados por quebra de linha (um enter), que poderao ser acessados mesmo apos o bloqueio da internet estar ativado.

## Senha

A senha de root e a mesma senha do usuario professor. Se vc nao sabe a senha, talvez vc nao deva possuir essa informacao.

Contate o dono do repositorio para mais informacoes.