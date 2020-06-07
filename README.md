# Robot Framework 


## instalações para funcionar o projeto 


### macOS

- Robot Framework 

```
pip3 install robotframework
```

- Chromedriver

```
brew cask install chromedriver
```

### windows

- Robot Framework: Utilizar a documentação do proprio Robot localizada no git
https://github.com/robotframework/robotframework 


- Chrome Driver: https://chromedriver.chromium.org/ 
Possuir a versão atual do chrome driver instaldo no computador, conforme tutorial https://medium.com/@reiload_88128/instalando-os-drivers-chrome-firefox-ie-no-windows-6873aec7d67b 

### instalando dependencias 

Pelo terminar inserir o comando 

```
pip3 install -r requirements.txt
```

Ele irá instalar toda as dependencias do projeto, configuradas no arquivo. 


## Rodar os cenários - Web 

- Rodando toda a feature

````
robot -d ./log web/tc/addRemove_elements/robot
```` 

- Rodando uma tag 

```
robot -d ./log -i tag web/tc/addRemove_elements/robot
```

- Rodar um cenário com escrita em Gherkin, neste caso também se aplica rodar apenas uma tag. 

````
robot -d ./log web/gherkin/consulta_bdd.robot
```` 

## Rodar cenários - API 



## Relatório 

O relatório da execução pode ser visualizado na pasta 

```
log/report.html
```