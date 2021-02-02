*** Settings ***
#language: pt

Documentation   SOM
Library         SeleniumLibrary
Resource        Login.robot
Test Setup      Nova sessão   
Test Teardown   Encerra sessão 

Resource        Exibição.robot
Resource        Validação_de_links.robot
Resource        Massa_de_Trabalho.robot
Resource        PPC.robot




**Test Cases** 

      
Nome de usuário incorrecto
    
    Dado que o utilizador acede a página de acesso ao SOM, com o usuário incorreto.
    Quando o utilizador acede com o "nome de usuário" incorreto.
    Então é apresentado mensagem de erro informando que o "nome de usuário" se encontra incorrecto.


Senha incorrecta

    Dado que o utilizador acede a página de acesso ao SOM, com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador acede com o "nome de usuário" correcto e "senha" incorrecta.
    Então é apresentado mensagem de erro informando que "Foi especificado um Nome do Usuário ou Senha Incorreta".


Nome de usuário e senha inexistente

    Dado que o utilizador acede a página de acesso ao SOM, com o "nome de usuário" e "senha" inexistente.
    Quando o utilizador acede com o "nome de usuário" e "senha" inexistente.
    Então é apresentado mensagem de erro informando que "Foi especificado um Nome do Usuário ou Senha Incorreta".


Nome de usuário e senha correcto/Login efetuado com sucesso

    Dado que o utilizador acede a página de acesso ao SOM, com o "nome de usuário" e "senha" da loja 1450 "Forum Sintra".
    Quando o utilizador acede com o "nome de usuário" correcto e "senha" correcta.
    Então utilizador acede ao SOM da loja 1450 "Forum Sintra" com sucesso.


Logout efetuado com sucesso

    Dado que o utilizador se encontra na página inicial do SOM.
    Quando o utilizador carregar no botão com o simbolo do "boneco" e carregar no botão "Sair".
    Então o utilizador é redirecionado para a página de acesso ao SOM.


Acesso ao link de Levantamento Omnicanal

    Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no link "Levantamento Omnicanal".
    Então é apresentado com sucesso o link de "Levantamento Omnicanal" com todas as encomendas disponíveis para a loja 1450 "Forum Sintra".


Acesso ao link de Expedições Omnicanal

    Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no link "Expedições Omnicanal".
    Então é apresentado com sucesso o link de "Expedições Omnicanal" com todas as encomendas disponíveis para a loja 1450 "Forum Sintra".


Criação de Pedido PPC
Pagamento PPC

    Dado que o utilizador se encontra na página do Sales Tool, loja 515 "Matosinhos".
    Quando o utilizador realiza um pedido do SKU/ITEM "5807112", para entrega na loja 524 "Colombo".
    Então o pedido é realizado com sucesso para a entrega na loja 524 "Colombo".


Pedido para transportador Luis Simões (PPC) - Teste Negativo - Parte 2

    Dado que o utilizador se encontra na página inicial do Orders Analytics.
    Quando o utilizador insere a Chanel Order gerada no teste anterior.
    Então o pedido tem que ter o destino a loja "524 - Matosinhos" ou "708 - Armazém do Online".


Exibição de Levantamento - Fórum Sintra

    Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no link "Levantamento Omnicanal".
    Então a encomenda criada na "Parte 1" não deve ser disponibilizada, pois esta encomenda é Luis Simões.


Exibição de Expedições - Fórum Sintra

    Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no link "Expedições Omnicanal".
    Então a encomenda criada na "Parte 1" não deve ser disponibilizada, pois esta encomenda é Luis Simões.


SCED
Pagamento SCED

    Dado que o utilizador se encontra na página do Sales Tool, loja 515 "Matosinhos".
    Quando o utilizador realiza um pedido do SKU/ITEM "6383397", para entrega em "Home Delivery".
    Então o pedido é realizado com sucesso para a entrega em "Home Delivery".


Pedido SCED - Teste Negativo - Parte 2

    Dado que o utilizador se encontra na página inicial do Orders Analytics.
    Quando o utilizador insere a Chanel Order gerada no teste anterior.
    Então o pedido tem que ter o destino igual a  "701 - Armazém SCED".


Pedido SCED - Teste Negativo - Parte 3

    Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no link "Levantamento Omnicanal".
    Então a encomenda criada na "Parte 1" não deve ser disponibilizada, pois esta encomenda é SCED.


Pedido SCED - Teste Negativo - Parte 4

    Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no link "Expedições Omnicanal".
    Então a encomenda criada na "Parte 1" não deve ser disponibilizada, pois esta encomenda é SCED.


PIS AA - Parte 1

    Dado que o utilizador se encontra na página do Sales Tool, loja 1450 "Forum Sintra".
    Quando o utilizador realiza um pedido do SKU/ITEM "5102638", "PIS", para entrega na loja 1450 "Forum Sintra".
    Então o pedido é realizado com sucesso para a entrega na loja 1450 "Forum Sintra".


PIS AA - Parte 2

    Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no link "Levantamento Omnicanal".
    Então a encomenda criada na "Parte 1" deve ser disponibilizada.


PIS AA - Parte 3

    Dado que o utilizador se encontra no SOM em "Levantamento Omnicanal", com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no botão "Assignar Tarefa".
    Então a página "Preparar Encomenda" deve ser apresentada com sucesso.



PIS AA - Parte 4

    Dado que o utilizador se encontra no SOM em "Preparar Encomenda", com o com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador inserir o EAN do SKU/ITEM.
    Então o EAN deve ficar "Verde" se estiver correto, com o botão "Avançar" habilitado ou aparecer um "POP UP" de alerta informando que 
    "O artigo picado não pertence a esta encomenda" e com o botão "Voltar à preparação" habilitado.


PIS AA - Parte 5

    Dado que o utilizador inseriu o EAN correto no teste anterior.
    Quando o utilizador carregar no botão "Avançar".
    Então o sistema deve apresentar mensagem de status informando que o "documento foi enviado para impressão" e por fim informar que 
    o "documento foi impresso com sucesso"



PIS AA - Parte 6

    Dado que o utilizador finalizou a preparação da encomenda.
    Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 1450 "Forum Sintra".
    Então a encomenda deve ter saido da página de "Levantamento Omnicanal" e ir para a página de "Tratadas"


PIS AA - Parte 7

    Dado que o utilizador finalizou a preparação da encomenda.
    Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 1450 "Forum Sintra".
    Então a etiqueta da encomenda deve ser gerada com sucesso, com os dados da loja de "Origem", "Destino", "Nome do Cliente" e "Transportador".
    Neste caso o transportador deve ser obrigatóriamente a "DPD".
 

PIS AB - Parte 1

    Dado que o utilizador se encontra na página do Sales Tool, loja 515 "Matosinhos".
    Quando o utilizador realiza um pedido do SKU/ITEM "6029472", "PIS AB", para entrega na loja 1450 "Forum Sintra".
    Então o pedido é realizado com sucesso para a entrega na loja 1450 "Forum Sintra".


PIS AB - Parte 2

    Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no link "Levantamento Omnicanal".
    Então a encomenda criada na "Parte 1" deve ser disponibilizada.


PIS AB - Parte 3

    Dado que o utilizador se encontra no SOM em "Levantamento Omnicanal", com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no botão "Assignar Tarefa".
    Então a página "Preparar Encomenda" deve ser apresentada com sucesso.


PIS AB - Parte 4

    Dado que o utilizador se encontra no SOM em "Preparar Encomenda", com o com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador inserir o EAN do SKU/ITEM.
    Então o EAN deve ficar "Verde" se estiver correto, com o botão "Avançar" habilitado ou aparecer um "POP UP" de alerta informando que 
    "O artigo picado não pertence a esta encomenda" e com o botão "Voltar à preparação" habilitado.


PIS AB - Parte 5

    Dado que o utilizador inseriu o EAN correto no teste anterior.
    Quando o utilizador carregar no botão "Avançar".
    Então o sistema deve apresentar mensagem de status informando que o "documento foi enviado para impressão" e por fim informar que 
    o "documento foi impresso com sucesso"


PIS AB - Parte 6

    Dado que o utilizador finalizou a preparação da encomenda.
    Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 1450 "Forum Sintra".
    Então a encomenda deve ter saido da página de "Levantamento Omnicanal" e ir para a página de "Tratadas"


PIS AB - Parte 7

    Dado que o utilizador finalizou a preparação da encomenda.
    Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 1450 "Forum Sintra".
    Então a etiqueta da encomenda deve ser gerada com sucesso, com os dados da loja de "Origem", "Destino", "Nome do Cliente" e "Transportador".
    Neste caso o transportador deve ser obrigatóriamente a "DPD".


PIS AB - MultiSKU - Parte 1

    Dado que o utilizador se encontra na página do Sales Tool, loja 515 "Matosinhos".
    Quando o utilizador realiza um pedido do SKU/ITEM "6029472" e "5102638", "PIS AB", para entrega na loja 1450 "Forum Sintra".
    Então o pedido é realizado com sucesso para a entrega na loja 1450 "Forum Sintra".



PIS AB - MultiSKU - Parte 2

    Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no link "Levantamento Omnicanal".
    Então a encomenda criada na "Parte 1" deve ser disponibilizada.


PIS AB - MultiSKU - Parte 3

    Dado que o utilizador se encontra no SOM em "Levantamento Omnicanal", com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no botão "Assignar Tarefa".
    Então a página "Preparar Encomenda" deve ser apresentada com sucesso.


PIS AB - MultiSKU - Parte 4

    Dado que o utilizador se encontra no SOM em "Preparar Encomenda", com o com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador inserir os dois EANs dos SKUs/ITEMs.
    Então os EANs devem ficar "Verde" se estiverem corretos, com o botão "Avançar" habilitado ou aparecer um "POP UP" de alerta informando que 
    "O artigo picado não pertence a esta encomenda" e com o botão "Voltar à preparação" habilitado.


PIS AB - MultiSKU - Parte 5

    Dado que o utilizador inseriu os EANs corretos no teste anterior.
    Quando o utilizador carregar no botão "Avançar".
    Então o sistema deve apresentar mensagem de status informando que o "documento foi enviado para impressão" e por fim informar que 
    o "documento foi impresso com sucesso"



PIS AB - MultiSKU - Parte 6

    Dado que o utilizador finalizou a preparação da encomenda.
    Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 1450 "Forum Sintra".
    Então a encomenda deve ter saido da página de "Levantamento Omnicanal" e ir para a página de "Tratadas"


PIS AB - MultiSKU - Parte 7

    Dado que o utilizador finalizou a preparação da encomenda.
    Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 1450 "Forum Sintra".
    Então a etiqueta da encomenda deve ser gerada com sucesso, com os dados da loja de "Origem", "Destino", "Nome do Cliente" e "Transportador".
    Neste caso o transportador deve ser obrigatóriamente a "DPD".


HD - Parte 1

    Dado que o utilizador se encontra na página do Sales Tool, loja 515 "Matosinhos".
    Quando o utilizador realiza um pedido do SKU/ITEM "6449068", "HD", para "Home Delivery".
    Então o pedido é realizado com sucesso para a entrega na casa do cliente.


HD - Parte 2

    Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 515 "Matosinhos".
    Quando o utilizador carrega no link "Levantamento Omnicanal".
    Então a encomenda criada na "Parte 1" deve ser disponibilizada.


HD - Parte 3

    Dado que o utilizador se encontra no SOM em "Levantamento Omnicanal", com o usuário da loja 515 "Matosinhos".
    Quando o utilizador carrega no botão "Assignar Tarefa".
    Então a página "Preparar Encomenda" deve ser apresentada com sucesso.


HD - Parte 4

    Dado que o utilizador se encontra no SOM em "Preparar Encomenda", com o com o usuário da loja 515 "Matosinhos".
    Quando o utilizador inserir o EAN do SKU/ITEM.
    Então o EAN deve ficar "Verde" se estiver correto, com o botão "Avançar" habilitado ou aparecer um "POP UP" de alerta informando que 
    "O artigo picado não pertence a esta encomenda" e com o botão "Voltar à preparação" habilitado.


HD - Parte 5

    Dado que o utilizador inseriu o EAN correto no teste anterior.
    Quando o utilizador carregar no botão "Avançar".
    Então o sistema deve apresentar mensagem de status informando que o "documento foi enviado para impressão" e por fim informar que 
    o "documento foi impresso com sucesso"


HD - Parte 6

    Dado que o utilizador finalizou a preparação da encomenda.
    Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 515 "Matosinhos".
    Então a encomenda deve ter saido da página de "Levantamento Omnicanal" e ir para a página de "Tratadas"


HD - Parte 7

    Dado que o utilizador finalizou a preparação da encomenda.
    Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 515 "Matosinhos".
    Então a etiqueta da encomenda deve ser gerada com sucesso, com os dados da loja de "Origem", "Destino", "Nome do Cliente" e "Transportador".
    Neste caso o transportador deve ser obrigatóriamente a "DPD".


SR - Parte 1

    Dado que o utilizador se encontra na página do Sales Tool, loja 515 "Matosinhos".
    Quando o utilizador realiza um pedido do SKU/ITEM "6507260", "SR", para "SR-Matosinhos".
    Então o pedido é realizado com sucesso para a entrega na loja 515 "Matosinhos".


SR - Parte 2

    Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 515 "Matosinhos".
    Quando o utilizador carrega no link "Levantamento Omnicanal".
    Então a encomenda criada na "Parte 1" deve ser disponibilizada.


SR - Parte 3

    Dado que o utilizador se encontra no SOM em "Levantamento Omnicanal", com o usuário da loja 515 "Matosinhos".
    Quando o utilizador carrega no botão "Assignar Tarefa".
    Então a página "Preparar Encomenda" deve ser apresentada com sucesso.


SR - Parte 4

    Dado que o utilizador se encontra no SOM em "Preparar Encomenda", com o com o usuário da loja 515 "Matosinhos".
    Quando o utilizador inserir o EAN do SKU/ITEM.
    Então o EAN deve ficar "Verde" se estiver correto, com o botão "Avançar" habilitado ou aparecer um "POP UP" de alerta informando que 
    "O artigo picado não pertence a esta encomenda" e com o botão "Voltar à preparação" habilitado.


SR - Parte 5

    Dado que o utilizador inseriu o EAN correto no teste anterior.
    Quando o utilizador carregar no botão "Avançar".    
    Então o sistema deve apresentar mensagem de status informando que o "documento foi enviado para impressão" e por fim informar que 
    o "documento foi impresso com sucesso"


SR - Parte 6

    Dado que o utilizador finalizou a preparação da encomenda.
    Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 515 "Matosinhos".
    Então a encomenda deve ter saido da página de "Levantamento Omnicanal" e ir para a página de "Tratadas"


SR - Parte 7

    Dado que o utilizador finalizou a preparação da encomenda.
    Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 515 "Matosinhos".
    Então a etiqueta da encomenda deve ser gerada com sucesso, com os dados da loja de "Origem", "Destino", "Nome do Cliente" e "Transportador".
    Neste caso o transportador deve ser obrigatóriamente a "DPD".


Rutura - Parte 1

    Dado que o utilizador se encontra na página do Sales Tool, loja 515 "Matosinhos".
    Quando o utilizador realiza um pedido do SKU/ITEM "6029472", "PIS AB", para entrega na loja 1450 "Forum Sintra".
    Então o pedido é realizado com sucesso para a entrega na loja 1450 "Forum Sintra".


Rutura - Parte 2

    Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no link "Levantamento Omnicanal".
    Então a encomenda criada na "Parte 1" deve ser disponibilizada.


Rutura - Parte 3

    Dado que o utilizador se encontra no SOM em "Levantamento Omnicanal", com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no botão "Assignar Tarefa".
    Então a página "Preparar Encomenda" deve ser apresentada com sucesso.


Rutura - Parte 4

    Dado que o utilizador se encontra no SOM em "Preparar Encomenda", com o com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador seleciona a list-in-box e seleciona algum motivo de "Rutura".
    Então é apresentado um "POP UP" informando que o "Estado do artigo atualizado para rutura com sucesso" e o botão "Fechar"
    fica habilitado.


Rutura - Parte 5

    Dado que o utilizador inseriu o "motivo de rutura" no teste anterior.
    Quando o utilizador carregar no botão "Finalizar com Rutura".
    Então é apresentado um novo "POP UP" informando que "Ao confirmar a rutura, todos os artigos picados perdem as validações efetuadas" 
    e o botão "Confirmar Rutura" e "Fechar" devem ficar habilitados.


Rutura - Parte 6

    Dado que o utilizador carregou no botão "Finalizar com Rutura".
    Quando o sistema apresentar a mensagem "Estado da Tarefa Atualizado para Rutura com Sucesso".
    Então o botão "Voltar à Lista de Encomendas" deve ser apresentado com sucesso.


Rutura - Parte 7

    Dado que o utilizador carregou no botão "Voltar à Lista de Encomendas".
    Quando o sistema apresentar a página "Levantamento Omnicanal".
    Então a encomenda com rutura deve ser removida da lista, não sendo apresentada em nenhuma outra lista.


Reimpressão de Etiquetas - Forum Sintra - Parte 1

    Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no link "Levantamento Omnicanal" e em seguida em "Tratadas".
    Então a página de "Tratadas" é apresentada com sucesso.


Reimpressão de Etiquetas - Forum Sintra - Parte 2

    Dado que o utilizador carregou no botão "Consultar Tarefa", com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no link "Levantamento Omnicanal" e em seguida em "Tratadas".
    Então a página de "Tratadas" é apresentada com sucesso.


Reimpressão de Etiquetas - Forum Sintra - Parte 3

    Dado que o utilizador se encontra no link "Levantamento Omnicanal", com o usuário da loja 1450 "Forum Sintra".
    Quando o utilizador carrega no botão "Reimprimir".
    Então a etiqueta de expedição é reimpressa com sucesso com os campos "Origem", "Destino", "Nome do Cliente" e "Transportador".
    Neste caso o transportador deve ser obrigatóriamente a "DPD".


Reimpressão de Etiquetas - Matosinhos - Parte 1

    Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 515 "Matosinhos".
    Quando o utilizador carrega no link "Levantamento Omnicanal" e em seguida em "Tratadas".
    Então a página de "Tratadas" é apresentada com sucesso.


Reimpressão de Etiquetas - Matosinhos - Parte 2

    Dado que o utilizador carregou no botão "Consultar Tarefa", com o usuário da loja 515 "Matosinhos".
    Quando o utilizador carrega no link "Levantamento Omnicanal" e em seguida em "Tratadas".
    Então a página de "Tratadas" é apresentada com sucesso.


Reimpressão de Etiquetas - Matosinhos - Parte 3

    Dado que o utilizador se encontra no link "Levantamento Omnicanal", com o usuário da loja 515 "Matosinhos".
    Quando o utilizador carrega no botão "Reimprimir".
    Então a etiqueta de expedição é reimpressa com sucesso com os campos "Origem", "Destino", "Nome do Cliente" e "Transportador".
    Neste caso o transportador deve ser obrigatóriamente a "DPD".


Exibição de Timing em Prazo - Fórum Sintra

    Dado que o utilizador se encontra na página "Levantamento Omnicanal", com o usuário da loja 1450 "Forum Sintra"
    Quando o utilizador visualiza esta página.
    Então se houver alguma encomenda "On Time", a mesma deve ser exibida com sucesso, incluindo o cronometro de "CUT OFF", por ordem decrescente.


Exibição de Timing - Fora de Pazo - Fórum Sintra

    Dado que o utilizador se encontra na página "Levantamento Omnicanal", com o usuário da loja 1450 "Forum Sintra"
    Quando o utilizador visualiza esta página.
    Então se houver alguma encomenda "Off Time", a mesma deve ser exibida com sucesso, sem o cronometro por ordem decrescente.


Exibição de Timing em Prazo - Matosinhos

    Dado que o utilizador se encontra na página "Levantamento Omnicanal", com o usuário da loja 515 "Matosinhos"
    Quando o utilizador visualiza esta página.
    Então se houver alguma encomenda ontime, a mesma deve ser exibida com sucesso, incluindo o cronometro de "CUT OFF", por ordem decrescente.


Exibição de Timing - Fora de Prazo - Matosinhos

    Dado que o utilizador se encontra na página "Levantamento Omnicanal", com o usuário da loja 515 "Matosinhos"
    Quando o utilizador visualiza esta página.
    Então se houver alguma encomenda "Off Time", a mesma deve ser exibida com sucesso, sem o cronometro por ordem decrescente.


Validação do Dashboard - Parte 1

    Dado que o utilizador acede a página de acesso ao Dashboard do SOM com o "usuário" e "senha" da loja "515 - Matosinhos" ou "1450 - Fórum Sintra".
    Quando o utilizador acede com o "nome de usuário" e "senha" correta.
    Então o utilizador acede com sucesso a página inicial do dashboard.

    Dado que o utilizador realizou a criação do pedido com destino a loja logada.
    Quando o pedido for enviado para esta loja via SOM.
    Então a quantidade de encomendas deve ser atualizada e a fila para onde esta encomenda foi disponibilizada, também deve ser atualizada.


Validação do Dashboard - Parte 2

    Dado que o utilizador acede a página de acesso ao Dashboard do SOM com o "usuário" e "senha" da loja "515 - Matosinhos" ou "1450 - Fórum Sintra".
    Quando o utilizador acede com o "nome de usuário" e "senha" correta.
    Então o utilizador acede com sucesso a página inicial do dashboard.

    Dado que o utilizador realizou a criação do pedido com destino a loja logada.
    Quando o pedido for enviado para esta loja via SOM.
    Então deve surgir um alarme sono informando que uma nova encomenda foi adicionada ao Dashboard.

    Dado que o utilizador se encontra logado no Dashboard.
    Quando passar 5 minutos após o login realizado.
    Então o Dashboard deve emitir um alarme sono para visualização do mesmo.


Teste integrado com o OMS

    Dado que o pedido de uma encomenda foi concluído com sucesso.
    Quando o OMS fica indisponível.
    Então a encomenda não é integrada ao SOM, pois o OMS se encontra indisponível.

    Dado que o OMS ficou ativo novamente.
    Quando todas as integrações do pedido foram concluídas.
    Então a encomenda deve chegar com sucesso ao SOM.

    Dado que a encomenda foi integrada com sucesso ao SOM.
    Quando acedemos a página de levantamento e ou expedição.
    Então a encomenda deve ser disponibilizada com sucesso, com o prazo de 30 minutos para a expedição.

    Dado que a encomenda foi localizada com sucesso na página de levantamento ou expedição.
    Quando carregamos no botão de expedição, inserimos o EAN e carregamos em "Avançar".
    Então a encomenda deve ser expedida com sucesso, assim gerando os documentos para impressão.

    Dado que a expedição da encomenda foi realizada com sucesso no passo anterior.
    Quando acedemos a página de "Tasks Documents".
    Então o arquivo PDF com a "shipping small label", "Manifesto" e "shipping label" devem ser localizados com sucesso.

    Dado que as etiquetas foram localizadas com sucesso na página "Tasks Documents".
    Quando carregamos nas etiquetas e manifestos gerados.
    Então as etiquetas devem ser exibidas com sucesso, seguindo o seguinte padrão:
    Shipping Small Label: Deve ter código de barras, com Chanel Order e nome do cliente que fez o pedido.
    Shipping Label: Deve conter todas as informações de Orgem/Destino, nome do cliente, número da loja que fez o envio do pedido, OLPN, Chanel Order com Tracking Number do OMS e código de rasteio enviado para a DPD.
    Manifesto: Deve conter a data de expedição do manifesto, logo do transportador, nome do cliente e número da chanel order.


Validação de Email após a expedição das encomendas

    Dado que o utilizador se encontra no sistema SOM.
    Quando a encomenda for expedida com sucesso.
    Então é enviado um email para o cliente que fez o pedido, com o número da chanel order e o item para ser levantado na loja.


Validação de SMS após a expedição das encomendas

    Dado que o utilizador se encontra no sistema SOM.
    Quando a encomenda for expedida com sucesso.
    Então é enviado um SMS para o cliente que fez o pedido, com o número da chanel order e o item para ser levantado na loja.



Expedição em ondas - Parte 1

    Dado que o utilizador se encontra logado no sistema SOM para a loja "515 - Matosinhos" e ou "1450 - Fórum Sintra".
    Quando o utilizador carrega no link da "Expedição Omnicanal".
    Então a página de "Expedição Omnicanal" é exibida com sucesso com várias encomendas disponíveis para expedição.


Expedição em ondas - Parte 2

    Dado que o utilizador se encontra na página da "Expedição Omnicanal".
    Quando o utilizador seleciona várias encomendas.
    Então o botão de preparação da encomenda é exibido com sucesso.


Expedição em ondas - Parte 3

    Dado que o utilizador se encontra na página da preparação da encomenda.
    Quando o prepara todas as encomendas.
    Então o botão avançar deve ser exibido com sucesso.


Expedição em ondas - Parte 4

    Dado que o utilizador carregou no botão avançar.
    Quando o sistema processa as encomendas preparadas.
    Então o sistema deve exibir com sucesso a preparação das encomendas.


Expedição em ondas - Parte 5

    Dado que a preparação de todas as encomendas foram concluídas com sucesso.
    Quando acedemos a página das etiquetas.
    Então o sistema deve exibir com sucesso as etiquetas de manifesto e de Shipping de cada uma das encomendas preparadas.


Expedição em ondas - Parte 6

    Dado que as etiquetas foram geradas com sucesso.
    Quando acedemos a etiqueta "Shipping Label".
    Então a etiqueta deve ser exibida com sucesso com "Origem", "Destino", "Contato do cliente" e "Informações de Expedição".


Expedição em ondas - Parte 7

    Dado que os manifestos foram gerados com sucesso.
    Quando acedemos o manifesto.
    Então o manifesto deve ser exibido com sucesso com "Nome do Cliente", "Numero da Encomenda", "Código da AT" e "Data/Hora de Expedição".



# ---Regressão Madeira---

# ***Acesso ao link de Levantamento Omnicanal***

# Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no link "Levantamento Omnicanal".
# Então é apresentado com sucesso o link de "Levantamento Omnicanal" com todas as encomendas disponíveis para a loja 000 "Madeira".


# ***Acesso ao link de Expedições Omnicanal***

# Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no link "Expedições Omnicanal".
# Então é apresentado com sucesso o link de "Expedições Omnicanal" com todas as encomendas disponíveis para a loja 000 "Madeira".


# ***Pedido para transportador Luis Simões (PPC) - Teste Negativo - Parte 1***

# Dado que o utilizador se encontra na página do Sales Tool, 000 "Madeira".
# Quando o utilizador realiza um pedido do SKU/ITEM "5807112", para entrega na loja 524 "Colombo".
# Então o pedido é realizado com sucesso para a entrega na loja 524 "Colombo".


# ***Pedido para transportador Luis Simões (PPC) - Teste Negativo - Parte 2***

# Dado que o utilizador se encontra na página inicial do Orders Analytics.
# Quando o utilizador insere a Chanel Order gerada no teste anterior.
# Então o pedido tem que ter o destino a loja "524 - Matosinhos" ou "708 - Armazém do Online".


# ***Pedido para transportador Luis Simões (PPC) - Teste Negativo - Parte 3***

# Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no link "Levantamento Omnicanal".
# Então a encomenda criada na "Parte 1" não deve ser disponibilizada, pois esta encomenda é Luis Simões.



# ***Pedido para transportador Luis Simões (PPC) - Teste Negativo - Parte 4***

# Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no link "Expedições Omnicanal".
# Então a encomenda criada na "Parte 1" não deve ser disponibilizada, pois esta encomenda é Luis Simões.


# ***Pedido SCED - Teste Negativo - Parte 1***

# Dado que o utilizador se encontra na página do Sales Tool, loja 000 "Madeira".
# Quando o utilizador realiza um pedido do SKU/ITEM "6383397", para entrega em "Home Delivery".
# Então o pedido é realizado com sucesso para a entrega em "Home Delivery".


# ***Pedido SCED - Teste Negativo - Parte 2***

# Dado que o utilizador se encontra na página inicial do Orders Analytics.
# Quando o utilizador insere a Chanel Order gerada no teste anterior.
# Então o pedido tem que ter o destino igual a  "701 - Armazém SCED".


# ***Pedido SCED - Teste Negativo - Parte 3***

# Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no link "Levantamento Omnicanal".
# Então a encomenda criada na "Parte 1" não deve ser disponibilizada, pois esta encomenda é SCED.



# ***Pedido SCED - Teste Negativo - Parte 4***

# Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no link "Expedições Omnicanal".
# Então a encomenda criada na "Parte 1" não deve ser disponibilizada, pois esta encomenda é SCED.



# ***PIS AA - Parte 1***

# Dado que o utilizador se encontra na página do Sales Tool, 000 "Madeira".
# Quando o utilizador realiza um pedido do SKU/ITEM "5102638", "PIS", para entrega na loja 000 "Madeira".
# Então o pedido é realizado com sucesso para a entrega na loja 000 "Madeira".


# ***PIS AA - Parte 2***


# Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no link "Levantamento Omnicanal".
# Então a encomenda criada na "Parte 1" deve ser disponibilizada.



# ***PIS AA - Parte 3***

# Dado que o utilizador se encontra no SOM em "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no botão "Assignar Tarefa".
# Então a página "Preparar Encomenda" deve ser apresentada com sucesso.



# ***PIS AA - Parte 4***

# Dado que o utilizador se encontra no SOM em "Preparar Encomenda", com o com o usuário da loja 000 "Madeira".
# Quando o utilizador inserir o EAN do SKU/ITEM.
# Então o EAN deve ficar "Verde" se estiver correto, com o botão "Avançar" habilitado ou aparecer um "POP UP" de alerta informando que 
# "O artigo picado não pertence a esta encomenda" e com o botão "Voltar à preparação" habilitado.



# ***PIS AA - Parte 5***

# Dado que o utilizador inseriu o EAN correto no teste anterior.
# Quando o utilizador carregar no botão "Avançar".
# Então o sistema deve apresentar mensagem de status informando que o "documento foi enviado para impressão" e por fim informar que 
# o "documento foi impresso com sucesso"



# ***PIS AA - Parte 6***

# Dado que o utilizador finalizou a preparação da encomenda.
# Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Então a encomenda deve ter saido da página de "Levantamento Omnicanal" e ir para a página de "Tratadas"



# ***PIS AA - Parte 7***

# Dado que o utilizador finalizou a preparação da encomenda.
# Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Então a etiqueta da encomenda deve ser gerada com sucesso, com os dados da loja de "Origem", "Destino", "Nome do Cliente" e "Transportador".
# Neste caso o transportador deve ser obrigatóriamente a "DPD".
 


# ***PIS AB - Parte 1***

# Dado que o utilizador se encontra na página do Sales Tool, 000 "Madeira".
# Quando o utilizador realiza um pedido do SKU/ITEM "6029472", "PIS AB", para entrega na loja 1450 "Forum Sintra".
# Então o pedido é realizado com sucesso para a entrega na loja 000 "Madeira".



# ***PIS AB - Parte 2***

# Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no link "Levantamento Omnicanal".
# Então a encomenda criada na "Parte 1" deve ser disponibilizada.



# ***PIS AB - Parte 3***

# Dado que o utilizador se encontra no SOM em "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no botão "Assignar Tarefa".
# Então a página "Preparar Encomenda" deve ser apresentada com sucesso.



# ***PIS AB - Parte 4***

# Dado que o utilizador se encontra no SOM em "Preparar Encomenda", com o com o usuário da loja 000 "Madeira".
# Quando o utilizador inserir o EAN do SKU/ITEM.
# Então o EAN deve ficar "Verde" se estiver correto, com o botão "Avançar" habilitado ou aparecer um "POP UP" de alerta informando que 
# "O artigo picado não pertence a esta encomenda" e com o botão "Voltar à preparação" habilitado.



# ***PIS AB - Parte 5***

# Dado que o utilizador inseriu o EAN correto no teste anterior.
# Quando o utilizador carregar no botão "Avançar".
# Então o sistema deve apresentar mensagem de status informando que o "documento foi enviado para impressão" e por fim informar que 
# o "documento foi impresso com sucesso"



# ***PIS AB - Parte 6***

# Dado que o utilizador finalizou a preparação da encomenda.
# Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Então a encomenda deve ter saido da página de "Levantamento Omnicanal" e ir para a página de "Tratadas"



# ***PIS AB - Parte 7***

# Dado que o utilizador finalizou a preparação da encomenda.
# Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Então a etiqueta da encomenda deve ser gerada com sucesso, com os dados da loja de "Origem", "Destino", "Nome do Cliente" e "Transportador".
# Neste caso o transportador deve ser obrigatóriamente a "DPD".


# ***PIS AB - MultiSKU - Parte 1***

# Dado que o utilizador se encontra na página do Sales Tool, 000 "Madeira".
# Quando o utilizador realiza um pedido do SKU/ITEM "6029472" e "5102638", "PIS AB", para entrega na loja 000 "Madeira".
# Então o pedido é realizado com sucesso para a entrega na loja 000 "Madeira".



# ***PIS AB - MultiSKU - Parte 2***

# Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no link "Levantamento Omnicanal".
# Então a encomenda criada na "Parte 1" deve ser disponibilizada.



# ***PIS AB - MultiSKU - Parte 3***

# Dado que o utilizador se encontra no SOM em "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no botão "Assignar Tarefa".
# Então a página "Preparar Encomenda" deve ser apresentada com sucesso.



# ***PIS AB - MultiSKU - Parte 4***

# Dado que o utilizador se encontra no SOM em "Preparar Encomenda", com o com o usuário da loja 000 "Madeira".
# Quando o utilizador inserir os dois EANs dos SKUs/ITEMs.
# Então os EANs devem ficar "Verde" se estiverem corretos, com o botão "Avançar" habilitado ou aparecer um "POP UP" de alerta informando que 
# "O artigo picado não pertence a esta encomenda" e com o botão "Voltar à preparação" habilitado.



# ***PIS AB - MultiSKU - Parte 5***

# Dado que o utilizador inseriu os EANs corretos no teste anterior.
# Quando o utilizador carregar no botão "Avançar".
# Então o sistema deve apresentar mensagem de status informando que o "documento foi enviado para impressão" e por fim informar que 
# o "documento foi impresso com sucesso"



# ***PIS AB - MultiSKU - Parte 6***

# Dado que o utilizador finalizou a preparação da encomenda.
# Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Então a encomenda deve ter saido da página de "Levantamento Omnicanal" e ir para a página de "Tratadas"



# ***PIS AB - MultiSKU - Parte 7***

# Dado que o utilizador finalizou a preparação da encomenda.
# Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Então a etiqueta da encomenda deve ser gerada com sucesso, com os dados da loja de "Origem", "Destino", "Nome do Cliente" e "Transportador".
# Neste caso o transportador deve ser obrigatóriamente a "DPD".



# ***HD - Parte 1***

# Dado que o utilizador se encontra na página do Sales Tool, 000 "Madeira".
# Quando o utilizador realiza um pedido do SKU/ITEM "6449068", "HD", para "Home Delivery".
# Então o pedido é realizado com sucesso para a entrega na casa do cliente.



# ***HD - Parte 2***

# Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no link "Levantamento Omnicanal".
# Então a encomenda criada na "Parte 1" deve ser disponibilizada.



# ***HD - Parte 3***

# Dado que o utilizador se encontra no SOM em "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no botão "Assignar Tarefa".
# Então a página "Preparar Encomenda" deve ser apresentada com sucesso.



# ***HD - Parte 4***

# Dado que o utilizador se encontra no SOM em "Preparar Encomenda", com o com o usuário da loja 000 "Madeira".
# Quando o utilizador inserir o EAN do SKU/ITEM.
# Então o EAN deve ficar "Verde" se estiver correto, com o botão "Avançar" habilitado ou aparecer um "POP UP" de alerta informando que 
# "O artigo picado não pertence a esta encomenda" e com o botão "Voltar à preparação" habilitado.



# ***HD - Parte 5***

# Dado que o utilizador inseriu o EAN correto no teste anterior.
# Quando o utilizador carregar no botão "Avançar".
# Então o sistema deve apresentar mensagem de status informando que o "documento foi enviado para impressão" e por fim informar que 
# o "documento foi impresso com sucesso"



# ***HD - Parte 6***

# Dado que o utilizador finalizou a preparação da encomenda.
# Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da 000 "Madeira".
# Então a encomenda deve ter saido da página de "Levantamento Omnicanal" e ir para a página de "Tratadas"



# ***HD - Parte 7***

# Dado que o utilizador finalizou a preparação da encomenda.
# Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da 000 "Madeira".
# Então a etiqueta da encomenda deve ser gerada com sucesso, com os dados da loja de "Origem", "Destino", "Nome do Cliente" e "Transportador".
# Neste caso o transportador deve ser obrigatóriamente a "DPD".



# **SR - Parte 1***

# Dado que o utilizador se encontra na página do Sales Tool, loja 000 "Madeira".
# Quando o utilizador realiza um pedido do SKU/ITEM "6507260", "SR", para "SR-Matosinhos".
# Então o pedido é realizado com sucesso para a entrega na loja 000 "Madeira".



# ***SR - Parte 2***


# Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no link "Levantamento Omnicanal".
# Então a encomenda criada na "Parte 1" deve ser disponibilizada.



# ***SR - Parte 3***

# Dado que o utilizador se encontra no SOM em "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no botão "Assignar Tarefa".
# Então a página "Preparar Encomenda" deve ser apresentada com sucesso.



# ***SR - Parte 4***

# Dado que o utilizador se encontra no SOM em "Preparar Encomenda", com o com o usuário da loja 000 "Madeira".
# Quando o utilizador inserir o EAN do SKU/ITEM.
# Então o EAN deve ficar "Verde" se estiver correto, com o botão "Avançar" habilitado ou aparecer um "POP UP" de alerta informando que 
# "O artigo picado não pertence a esta encomenda" e com o botão "Voltar à preparação" habilitado.



# ***SR - Parte 5***

# Dado que o utilizador inseriu o EAN correto no teste anterior.
# Quando o utilizador carregar no botão "Avançar".
# Então o sistema deve apresentar mensagem de status informando que o "documento foi enviado para impressão" e por fim informar que 
# o "documento foi impresso com sucesso"



# ***SR - Parte 6***

# Dado que o utilizador finalizou a preparação da encomenda.
# Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Então a encomenda deve ter saido da página de "Levantamento Omnicanal" e ir para a página de "Tratadas"



# ***SR - Parte 7***

# Dado que o utilizador finalizou a preparação da encomenda.
# Quando o utilizador voltar para a página "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Então a etiqueta da encomenda deve ser gerada com sucesso, com os dados da loja de "Origem", "Destino", "Nome do Cliente" e "Transportador".
# Neste caso o transportador deve ser obrigatóriamente a "DPD".


# ***Rutura - Parte 1***

# Dado que o utilizador se encontra na página do Sales Tool, loja 000 "Madeira".
# Quando o utilizador realiza um pedido do SKU/ITEM "6029472", "PIS AB", para entrega na loja 000 "Madeira".
# Então o pedido é realizado com sucesso para a entrega na loja 000 "Madeira".


# ***Rutura - Parte 2***

# Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no link "Levantamento Omnicanal".
# Então a encomenda criada na "Parte 1" deve ser disponibilizada.


# ***Rutura - Parte 3***

# Dado que o utilizador se encontra no SOM em "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no botão "Assignar Tarefa".
# Então a página "Preparar Encomenda" deve ser apresentada com sucesso.


# ***Rutura - Parte 4***

# Dado que o utilizador se encontra no SOM em "Preparar Encomenda", com o com o usuário da loja 000 "Madeira".
# Quando o utilizador seleciona a list-in-box e seleciona algum motivo de "Rutura".
# Então é apresentado um "POP UP" informando que o "Estado do artigo atualizado para rutura com sucesso" e o botão "Fechar"
# fica habilitado.


# ***Rutura - Parte 5***

# Dado que o utilizador inseriu o "motivo de rutura" no teste anterior.
# Quando o utilizador carregar no botão "Finalizar com Rutura".
# Então é apresentado um novo "POP UP" informando que "Ao confirmar a rutura, todos os artigos picados perdem as validações efetuadas" 
# e o botão "Confirmar Rutura" e "Fechar" devem ficar habilitados.


# ***Rutura - Parte 6***

# Dado que o utilizador carregou no botão "Finalizar com Rutura".
# Quando o sistema apresentar a mensagem "Estado da Tarefa Atualizado para Rutura com Sucesso".
# Então o botão "Voltar à Lista de Encomendas" deve ser apresentado com sucesso.


# ***Rutura - Parte 7***

# Dado que o utilizador carregou no botão "Voltar à Lista de Encomendas".
# Quando o sistema apresentar a página "Levantamento Omnicanal".
# Então a encomenda com rutura deve ser removida da lista, não sendo apresentada em nenhuma outra lista.



# ***Reimpressão de Etiquetas - Madeira - Parte 1***

# Dado que o utilizador se encontra na página inicial do SOM, com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no link "Levantamento Omnicanal" e em seguida em "Tratadas".
# Então a página de "Tratadas" é apresentada com sucesso.


# ***Reimpressão de Etiquetas - Madeira - Parte 2***

# Dado que o utilizador carregou no botão "Consultar Tarefa", com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no link "Levantamento Omnicanal" e em seguida em "Tratadas".
# Então a página de "Tratadas" é apresentada com sucesso.


# ***Reimpressão de Etiquetas - Madeira - Parte 3***

# Dado que o utilizador se encontra no link "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Quando o utilizador carrega no botão "Reimprimir".
# Então a etiqueta de expedição é reimpressa com sucesso com os campos "Origem", "Destino", "Nome do Cliente" e "Transportador".
# Neste caso o transportador deve ser obrigatóriamente a "DPD".


# ***Exibição Timing em prazo - Madeira***

# Dado que o utilizador se encontra na página "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Quando o utilizador visualiza esta página.
# Então se houver alguma encomenda "On Time", a mesma deve ser exibida com sucesso, incluindo o cronometro de "CUT OFF", por ordem decrescente.


# ***Exibição Timing fora de prazo - Madeira***

# Dado que o utilizador se encontra na página "Levantamento Omnicanal", com o usuário da loja 000 "Madeira".
# Quando o utilizador visualiza esta página.
# Então se houver alguma encomenda "Off Time", a mesma deve ser exibida com sucesso, sem o cronometro por ordem decrescente.

# ***Validação do Dashboard - Parte 1***

# Dado que o utilizador acede a página de acesso ao Dashboard do SOM com o "usuário" e "senha" da loja 000 "Madeira".
# Quando o utilizador acede com o "nome de usuário" e "senha" correta.
# Então o utilizador acede com sucesso a página inicial do dashboard.

# Dado que o utilizador realizou a criação do pedido com destino a loja logada.
# Quando o pedido for enviado para esta loja via SOM.
# Então a quantidade de encomendas deve ser atualizada e a fila para onde esta encomenda foi disponibilizada, também deve ser atualizada.


# ***Validação do Dashboard - Parte 2***

# Dado que o utilizador acede a página de acesso ao Dashboard do SOM com o "usuário" e "senha" da loja 000 "Madeira".
# Quando o utilizador acede com o "nome de usuário" e "senha" correta.
# Então o utilizador acede com sucesso a página inicial do dashboard.

# Dado que o utilizador realizou a criação do pedido com destino a loja logada.
# Quando o pedido for enviado para esta loja via SOM.
# Então deve surgir um alarme sono informando que uma nova encomenda foi adicionada ao Dashboard.

# Dado que o utilizador se encontra logado no Dashboard.
# Quando passar 5 minutos após o login realizado.
# Então o Dashboard deve emitir um alarme sono para visualização do mesmo.


# ***Validação de Email após a expedição das encomendas***

# Dado que o utilizador se encontra no sistema SOM.
# Quando a encomenda for expedida com sucesso.
# Então é enviado um email para o cliente que fez o pedido, com o número da chanel order e o item para ser levantado na loja.



# ***Validação de SMS após a expedição das encomendas***

# Dado que o utilizador se encontra no sistema SOM.
# Quando a encomenda for expedida com sucesso.
# Então é enviado um SMS para o cliente que fez o pedido, com o número da chanel order e o item para ser levantado na loja.


# ***Expedição em ondas - Parte 1***

# Dado que o utilizador se encontra logado no sistema SOM para a loja 000 "Madeira".
# Quando o utilizador carrega no link da "Expedição Omnicanal".
# Então a página de "Expedição Omnicanal" é exibida com sucesso com várias encomendas disponíveis para expedição.


# ***Expedição em ondas - Parte 2***

# Dado que o utilizador se encontra na página da "Expedição Omnicanal".
# Quando o utilizador seleciona várias encomendas.
# Então o botão de preparação da encomenda é exibido com sucesso.


# ***Expedição em ondas - Parte 3***

# Dado que o utilizador se encontra na página da preparação da encomenda.
# Quando o prepara todas as encomendas.
# Então o botão avançar deve ser exibido com sucesso.


# ***Expedição em ondas - Parte 4***

# Dado que o utilizador carregou no botão avançar.
# Quando o sistema processa as encomendas preparadas.
# Então o sistema deve exibir com sucesso a preparação das encomendas.


# ***Expedição em ondas - Parte 5***

# Dado que a preparação de todas as encomendas foram concluídas com sucesso.
# Quando acedemos a página das etiquetas.
# Então o sistema deve exibir com sucesso as etiquetas de manifesto e de Shipping de cada uma das encomendas preparadas.


# ***Expedição em ondas - Parte 6***

# Dado que as etiquetas foram geradas com sucesso.
# Quando acedemos a etiqueta "Shipping Label".
# Então a etiqueta deve ser exibida com sucesso com "Origem", "Destino", "Contato do cliente" e "Informações de Expedição".

# ***Expedição em ondas - Parte 7***

# Dado que os manifestos foram gerados com sucesso.
# Quando acedemos o manifesto.
# Então o manifesto deve ser exibido com sucesso com "Nome do Cliente", "Numero da Encomenda", "Código da AT" e "Data/Hora de Expedição".


