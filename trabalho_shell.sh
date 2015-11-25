#!/bash/bin
while [ 1 == 1 ]
do
echo "################################################################################"
echo "#                                                                              #"
echo "# UNIGRANRIO - Universidade do Grande Rio                                      #" 
echo "# Sistemas Operacionais Abertos                             Semestre 2 de 2015 #"
echo "#------------------------------------------------------------------------------#"
echo "# Professor: Luiz Fernando T. de Farias                    Turma: EIN 359-01/1 #"
echo "# Equipe desenvolvedora:                                                       #"
echo "#           Aluno: Felipe Cardoso de Araujo Lamim                              #"
echo "#           Aluno: Giuliano Orlando Nogueira                                   #"
echo "#           Aluno: Igor Felipe de Jesus                                        #"
echo "#           Aluno: Thamires Cristina Oliveira de Lima                          #"
echo "#------------------------------------------------------------------------------#"
echo "# Rio de Janeiro, `date +%d` de `date +%B` de `date +%Y`                                       #"
echo "# Hora do sistema: `date +%H` Horas e `date +%M` MInutos                                       #"
echo "#------------------------------------------------------------------------------#"
echo "# Selecione a Opção Desejada                                                   #"
echo "# 1)Criar Uma Pasta                                                            #"                                                                         
echo "# 2)Excluir uma Pasta                                                          #"
echo "# 3)Criar um Arquivo                                                           #"
echo "# 4)Editar um Arquivo                                                          #"
echo "# 5)Excluir Arquivo                                                            #"
echo "# 6)Listar um Diretório                                                        #"
echo "# 7)Abrir o Gerenciador de Tarefas                                             #"
echo "# 8)Sair                                                                       #"
echo "#                                                                              #"
echo "# Selecione uma Opção                                                          #"
echo "################################################################################"
read op
case $op in
	1) echo "Criar uma Pasta"
	echo "Digite o nome desejado para a pasta"
	read name
	mkdir -p $name
    echo "Deseja visualizar o local onde a sua pasta foi criada(S/N) ?"
    read confirm
    if [ $confirm = "S" ] || [ $confirm = "s" ];
        then
        ls
        echo "Aperte qualquer tecla para continuar"
        read con
        fi
	clear;;
	
	2)echo "Excluir uma Pasta"
	echo "Digite o nome da Pasta que desejas excluir"
	read name
	rm -r ./$name
    echo "Deseja visualizar o local onde a sua pasta estava(S/N) ?"
    read confirm
    if [ $confirm = "S" ] || [ $confirm = "s" ];
        then
        ls
        echo "Aperte qualquer tecla para continuar"
        read con
        fi
	clear;;
	
	3)echo "Criar um Arquivo"
	echo "Digite o nome do Arquivo que desejas criar"
	read name
	touch $name
    echo "Deseja visualizar o local onde o seu arquivo foi criado(S/N) ?"
    read confirm
    if [ $confirm = "S" ] || [ $confirm = "s" ];
        then
        ls
        echo "Aperte qualquer tecla para continuar"
        read con
        fi
	clear;;
	
	4)echo "Editar um Arquivo"
	echo "Digite o arquivo que desejas editar"
	read name
	vi $name
	clear;;
	
	5)echo "Remover um Arquivo"
	echo "Digite o nome do arquivo que desejas remover"
	read name
	rm $name
    echo "O arquivo $name foi removido"
    echo "Aperte qualquer tecla para continuar"
    read con
	clear;;
	
	6)echo "Listar um Diretório"
	echo "Digite o nome do diretório que desejas listar"
	read name
	ls $name
	echo "Aperte qualquer tecla para continuar"
    read con
	clear;;
	
    7)echo "Abrir o Gerenciador de Tarefas"
    echo "Para sair do Gerenciador de Tarefas pressione Q"    
    sleep 5
    top
    clear;;	
    8)echo "Você deseja realmente sair(S/N)?"
	read confirm
	if [ $confirm = "S" ] ||[ $confirm = "s" ];
		then
            echo "Obrigado por usar o nosso sistema"
            echo "Saindo do Sistema..."
            sleep 2
			exit;
	fi;;
	*)echo "Oops, a opção digitada é incorreta"
      sleep 2      
      clear;;
esac
done
