# Financiamento

Sistema para gerar propostas de financiamento baseadas no nivel de score do cliente no Serasa.
Ele não faz a consulta do Score no site, precisa ser informado manualmente.
Sistema todo compliado no Embarcadero® Delphi 10.4, Update 2 Version 27.0.40680.4203, sem necessidade de nenhum pacote externo.


## Instalação

Não ha necessidade de nenhuma instalação para execução. Apenas a execução do arquivo ja compliado que esta no repositorio.

Acomplanha todos os codigos fontes para uma nova complilação utilizando o compilador informado anteriormente.

## Utilização
Ao executar o aplicativo, ele admite por padrão as seguintes configurações.
Para um cliente com score no Serasa inferior a 300, ele permite apenas uma proposta que a parcela comprometa um máximo de 5% da sua renda mensal do cliente. Para escore entre 301 e 700, ele permite 15%¨e para score superior a 701, ele permite 30%.
Essas configurações podem ser alteradas a qualquer momento através do botão "configurações".
Carrega também como padrão, uma aplicação de 1,5% de juros ao mês no valor pretendido, bem como um modelo predefinido de contrato.
Essas duas configurações também podem ser alteradas pela parte de configuração, tal qual as porcentagens que regulam o score.


Na tela inicial do aplicativo deve ser informado o Nome do cliente, o CPF, a renda mensal e o seu score no Serasa.
  As características da primeira tela são: Não permite que prossiga sem o preenchimento de todos os campos. Não permite algarismos não numéricos no campo Score. Embora permita algarismos não numéricos no campo referente a renda, ele não permite que prossiga caso tenha sido digitado algo de diferente de um valor dos números Reais. O campo CPF, embora tenha máscara para digitação do CPF no formato correto, ele não possui verificação de veracidade do CPF digitado. Não foi implementado isso apenas para facilitar o teste junto a que for analisar o aplicativo, porém é um procedimento simples a ser implementado na saída do campo.
  

A tela inicial da acesso a duas telas seguintes. 
  Sendo uma delas a das configurações, onde é possível ajustar a faixa de renda a ser comprometida com as parcelas do financiamento, bem como sua carga de juros mensais. Todos   os campos só permitem a digitação dos valores compatíveis com cada função, bem como não permite que os campos das porcentagens não sigam uma regra crescente. Ou seja, o primeiro valor não pode ser maior que o segundo e o segundo não pode ser maior que o terceiro.
  A outra tela é a sequência da solicitação. Para dar andamento a solicitação da proposta.
  
  A tela do andamento da proposta consiste em uma tela de analisa do valor das parcelas pelo cliente. Deve ser informado o valor desejado para análise e submete-se esse valor aos cálculos que libera as possibilidades de parcelamento conforme prévio ajuste de porcentagem em relação a Score.

Feito a seleção da quantia de parcelas e o valor desejado para financiamento, segue-se para a tela de finalização da proposta, onde é analisado o contrato pronto a ser enviado a instituição. Ele não permite concluir a solicitação sem o prévio aceite do contrato com a marcação do campo para tal. Realizado isso, ao clicar na finalização, ele gera um arquivo em txt na própria pasta onde está sendo executado o aplicativo. Tendo como nome a data e hora em que foi gerado o arquivo e contendo a cópia do contrato previamente aceitado.


## Licença
[GNU](https://choosealicense.com/licenses/agpl-3.0/)
