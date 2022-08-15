#!/bin/bash

#criação e listagem dos diretórios publico, adm, ven e sec na raiz.
mkdir /{publico,adm,ven,sec}
echo "###########################################################"
echo "#################### Directory Creating ###################"
echo "###########################################################"
echo "#################### Directory Created ####################"
echo "###########################################################"
echo "#################### Listing Drectory #####################"
echo "###########################################################"
ls -l / | egrep "publico|adm|ven|sec"
echo "###########################################################"
echo " "
echo " "

#criação e listagem dos grupos GRP_ADM, GRP_VEN, e GRP_SEC.
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "###########################################################"
echo "############### Group of the Users Creating ###############"
echo "###########################################################"
echo "##################### Groups Created ######################"
echo "###########################################################"
echo "##################### Listing Groups ######################"
echo "###########################################################"
cat /etc/group | cut -d ":" -f1 | egrep "GRP_ADM|GRP_VEN|GRP_SEC"
echo "###########################################################"
echo " "
echo " "

#criação e listagem dos usuários carlos, maria, joao, debora, sebastiana, roberto, josefina, amanda e rogerio.
#criação e listagem dos usuários do grupo GRP_ADM.
useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
echo "###########################################################"
echo "###################### Users Creating #####################"
echo "###########################################################"
echo "######################## Users ADM ########################"
echo "###########################################################"
echo "###################### Listing Users ######################"
echo "###########################################################"
cat /etc/passwd | egrep "carlos|maria|joao" | cut -d ":" -f1
echo "###########################################################"
echo " "
echo " "

#criação e listagem dos usuários do grupo GRP_VEN.
useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
echo "###########################################################"
echo "###################### Users Creating #####################"
echo "###########################################################"
echo "######################## Users VEN ########################"
echo "###########################################################"
echo "###################### Listing Users ######################"
echo "###########################################################"
cat /etc/passwd | egrep "debora|sebastiana|roberto" | cut -d ":" -f1
echo "###########################################################"
echo " "
echo " "

#criação e listagem dos usuários do grupo GRP_SEC.
useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
echo "###########################################################"
echo "###################### Users Creating #####################"
echo "###########################################################"
echo "######################## Users SEC ########################"
echo "###########################################################"
echo "###################### Listing Users ######################"
echo "###########################################################"
cat /etc/passwd | egrep "josefina|amanda|rogerio" | cut -d ":" -f1
echo "###########################################################"
echo " "
echo " "

#Listagem de usuários nos referidos grupos.
echo "###########################################################"
echo "################# Listing Users in Groups #################"
echo "###########################################################"
cat /etc/group | egrep "GRP_ADM|GRP_VEN|GRP_SEC"
echo "###########################################################"
echo " "
echo " "

#Permissões em diretórios /adm, /ven, /sec e /publico.
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 770 /{adm,ven,sec}
chmod 777 /publico
echo "###########################################################"
echo "############ Permissions Creating in Directory ############"
echo "###########################################################"
echo "############ Permissions Created in Directory #############"
echo "###########################################################"
echo "################## Listing Permissions ####################"
echo "###########################################################"
ls -l / | egrep "publico|adm|ven|sec"
echo "###########################################################"
echo " "
echo " "
echo "###########################################################"
echo "########################## Finish #########################"
echo "###########################################################"

