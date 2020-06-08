# Robot Framework 


## O que este projeto faz 

- Web :checkered_flag:
    - :trophy: Testes automatizados no site http://automationpractice.com/index.php 

    - :trophy: Cenários escritos com base de critérios de aceitação 

    - :trophy: Utilização de BDD para escrita dos cenários

    - :trophy: Relatório de execução 

- API :checkered_flag:
    - :trophy: Testes automatizados da API https://fakerestapi.azurewebsites.net/api 

    - :trophy: Cenários escritos com base de critérios de aceitação 

    - :trophy: Utilização de BDD para escrita dos cenários

    - :trophy: Relatório de execução 


## Como rodar a aplicação :books:

### Dowlonad repositório 

```
    https://github.com/paraujocaimi/robotFrameworkWebApi.git
```


### Configuração para macOS

- Robot Framework 

```
pip3 install robotframework
```

- Chromedriver

```
brew cask install chromedriver
```

### Configuração para windows

- Robot Framework: Utilizar a documentação do proprio Robot localizada no git
https://github.com/robotframework/robotframework 


- Chrome Driver: https://chromedriver.chromium.org/ 
Possuir a versão atual do chrome driver instaldo no computador, conforme tutorial https://medium.com/@reiload_88128/instalando-os-drivers-chrome-firefox-ie-no-windows-6873aec7d67b 

### Dependencias 

Pelo terminar inserir o comando 

```
pip3 install -r requirements.txt
```

Ele irá instalar toda as dependencias do projeto, configuradas no arquivo. 

## **Estrutura do Projeto**

- Log: relatórios de execução
- API: cenários de API
- Web: cenários para Web
- Keywords: pasta com todos os arquivos keywords gerados para o teste
- tc: onde estáo escrito os cenários de testes, sem a estrutura Gherkin
- gherkin: Mesmos cenários de testes porém utilizando padrão Gherkin de escrita
- variavles: pasta onde fica armazenados todas as varibles utilizadas no teste

```
├── Raiz
│   ├── log
│   │   └── api
│   │   └── web
│   ├── api
│   │   ├── keywords
│   │   ├── tc
│   │   ├── variables
│   ├── web
│   │   ├── config
│   │   ├── gherkin
│   │   ├── keywords
│   │   ├── tc
│   │   ├── variables
├── .gitignore
├── requirements.txt
├── README.md


```



## **Cenários**

### Comando rodar os testes

Através do terminal usar uma das opçoões abaixo

- Rodar Cenários por Tag 
    - Web
        ```
            robot -d ./log/web -i tag  web/tc/consulta_tc.robot
        ```
    - API 
         ```
            robot -d ./log/api -i tag api/tc/insertBook_tc.robot
        ```


- Rodar Cenários pelo nome da classe

    - Web 

        ```
            robot -d .log/web  web/tc/consulta_tc.robot
        ```
    - API 
        ```
            robot -d .log/api api/tc/insertBook_tc.robot
        ```


- Rodar Cenário pelo BDD

    - Web 

        ```
            robot -d .log/web  web/gherkin/consulta_bdd.robot
        ```
    - API
        Os cenários já foram escrito em Gherkin


## Cenários - Web 




|Cenário                                                                 | Nome da Classe        | Nome da Classe + Gherkin | 
|--------------------------------------------------------------------    | --------------        |    --------------        |
|ST1: Consultar produtos no site.                                        |  consulta_tc.robot    | consulta_bdd.robot       |
|ST2: Utilizar o carrinho de compras para adicionar e remover produtos   |  addRemove_tc.robot   | consulta_bdd             |
|ST3: Exibir as categorias de produtos no menu da página inicial.        |  categoriasHome_tc    | categoriasHome_bdd       |



## Cenários - API


Cenário     | Tag | Nome da Classe + Gherkin 
--------- | ------  | ------
ST1: Permitir o cadastro de livros.| insertOne | insertBook_tc.robot
ST2: Validar retorno da busca de todos os livros cadastrados     | getOneBook     | getBook_tc.robot
ST3: Validar retorno de dados do livro desejado    | getAllBook | getBook_tc.robot


## Relatório 

O relatório gerado da execução pode ser visualizado nas seguintes pastas abaixo, com o nome de report.html

    - API: lo/api 
    - Web: log/web






## **Participante**
|Nome|e-mail|
| -------- | -------- |
|Priscila de Araujo Caimi|paraujocaimi@hotmail.com.br|