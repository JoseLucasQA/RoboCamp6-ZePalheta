# RoboCamp6-ZePalheta
BootCamp usando RobotFramework para automação de testes

- Ferramentas : RobotFramework | Python | Docker | Git | PostgreSQL

## Saindo do ZERO 
    - Conhecendo o projeto 
    - Meu ambiente com Docker 
    - Desliguei minha máquina, e agora?
    - Stack do RocoCamp 
    - Escolhendo a IDE 

## Introdução a Automação WEB 
    - Login 
    - Console Emulator 
    - Resources e Keywords
    - Reuso de Keywords! Rodando com Tags 
    - Outputs do Robot 
    - Teste mais, codifique menos ❤
    - Workshop BDD 
    - Templates de Teste do Robot 
    - Ganhos de Testes 
    - Base Resources 
    - Ganchos de Suite 

## Avançando na Automação 
    - Escrevendo cenários com Gherkin
    - Gancho de login + Timeouts Explícitos
    - Introdução ao Page Object
    - Page Object e Sidebar Component
    - Formulário simples
    - Validando notificações do Toaster
    - Deu ruin na massa! #SQN
    - Variáveis
    - Controle de Versão com Git
    - Resolvendo o desafio dos campos obrigatórios
    - Ramificações (Branchs do Git)
    - Melhorando a validação com CSS Selector
    - Refatorando Steps
    - Cenários Independentes
    - Exclusão de Clientes
    - Xpath Dinâmico
    - Encapsulando mais ações!
    - Melhorando as validações

## Automação para API REST
    - Live - O que são APIs?
    - POST Sessions
    - POST Customers
    - Token Dinâmico
    - POST Customer (Encapsulamento)
    - Get Json File
    - GET Customers + Robot FOR
    - Get Unique Customer
    - GET Customer 404
    - PUT Customer
    - DELETE Customer

## DevOps for Testers
    - Introdução ao DevOps com Jenkins
    - Continuous Testing Parte 1
    - Continuous Testing Parte 2   

## Estratégias de Automação
    - Massa de Testes através da API - Parte 1
    - Massa de Testes através da API - Parte 2
    - Finalizando o Contrato de Locação
    - Encerrando com Paralelismo
    
### Comandos 
    - Iniciar ambiente docker
        - docker-compose up -d
    
    - Desligar ambiente docker
        - docker-compose down 
        
    - Setup de ambiente 
        - docker exec -it zepalheta-api sh /home/node/api/setup.sh

    - Comando Instalação Jenkins
        - docker container run --name jenkins-blueocean --detach   -u root   --volume jenkins-data:/var/jenkins_home   --volume
            /var/run/docker.sock:/var/run/docker.sock   --publish 8080:8080 --publish 50000:50000 jenkinsci/blueocean