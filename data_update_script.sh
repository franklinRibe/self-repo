#!/bin/bash
# Script: atualiza-scielo-br.sh - Script de atualização das bases para a metodologia SciELO. Para os servidores backends
# Programador: Rondineli Saad e Fábio Batalha
# Mantenedor: Rondineli Saad e Fábio Batalha
# Criado em: 05/01/2011
# Versão: 11
# Funcao para atualizar bases:-->
#                               |->$1 Coleção
#                               |->$2 Diretório em /var/www
# Modificado em: 10/12/2014 -> Por: Rondneli Saad
#
#
# Endereço do servidores agora eh informado via argumento
# no momento de execucao do script.
#
# Ex: sh -x atualiza-scielo-br.sh backend01.scielo.br
#
# Modificado em: 16/10/2015 -> Por: Guilherme Chagas
#
echo "Update SciELO-BR Data"
#DIR_INSTANCIA="/var/www/scielo_br"
#DIR_BASES="artigo areasgeo issue title related cited doi iah img lattes medline newissue translation projfapesp xml"
#DATA_ATUAL=`date  +"%d-%m-%Y-%H_%m_%S"`
#DIR_LOG="/home/gandalf"

echo "INICIO DA ATUALIZACAO |`date '+%d/%m/%Y %H:%M:%S'`" >> /Users/franklin.ribeiro/Documents/log_data_update.log

if [ ! -z $1 ]
then
  if [ $1 = '192.168.1.51' -o $1 = '192.168.1.50' ]
    then
      echo rm -rfv /Users/franklin.ribeiro/Documents/var/www/scielo_br/bases-old*
  fi
fi

