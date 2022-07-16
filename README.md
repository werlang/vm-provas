# VM-config Repo

Este repositório contém os scripts necessários para usar a vm de provas.

Esta VM funciona quase sozinha. Para usar em um novo lab, só copiem a imagem da VM nos pcs. A cada vez que a VM iniciar, tem um cronjob que sincroniza os scripts e a whitelist com o repositório, Assim qualquer atualização não precisa atualizar cada pc.

A VM pode ser baixada [neste link](https://drive.google.com/uc?export=download&id=1-KASKMYsUyMzixXTnynUheW6zpIFmAV0).

## Funcionalidades

* Bloqueio de quaisquer dispositivos externos (impede o mount).
* Bloqueio de conexão com a internet (exceto domínios na whitelist).
* Whitelist com sites onde é permitido o acesso à internet, como por exemplo o site do Moodle para entrega da atividade, sites com documentação, etc.
* Script que permite que o professor limpe a home do aluno, acabando com qualquer arquivo residual após as avaliações.

## Arquivos

Todos scripts e whitelist estão na pasta `/home/professor/vm-config`, que também é o caminho deste repositório.

### boot.sh

Cronjob chama esse script quando reinicia a máquina.

### block.sh

Bloqueia acesso a dispositivos externos e internet, com excessão dos sites descritos em `whitelist.txt`.

### restore.sh

Restaura acesso normal da internet e dispositivos externos. Como o bloqueio é feito automaticamente, este script **precisar ser chamado quando o professor quer acesso a internet dentro da VM**.

### clean.sh

Remove a pasta do aluno, e substitui ela com o conteúdo de `aluno-home.zip`, que é a pasta do aluno vazia, e com configurações "zeradas". Também limpa a pasta do apache, para caso a prova seja feita na linguagem PHP.

Este é o único script que **não é chamado automaticamente no boot**. Desta maneira garante que os alunos não perderão seus arquivos caso o pc desligue sem querer. Recomendado o professor chamar **sempre antes da prova**.

### sync.sh

Faz um pull neste repositório. Este é o script que possibilita a sincronização automática de atualizações dos scripts e whitelist a cada reboot da máquina.

### whitelist.txt

Aqui deve conter uma lista de domínios, separados por quebra de linha (um Enter), que poderão ser acessados mesmo após o bloqueio da internet estar ativado.

## Senha

A senha de root é a mesma senha do usuario professor. Se vc não sabe a senha, talvez não deva possuir essa informação.

[Entre em contato](https://github.com/werlang) para mais informações.