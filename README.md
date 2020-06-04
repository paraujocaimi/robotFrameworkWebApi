## Robot Framework 



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

- Robot Framework: https://github.com/robotframework/robotframework 
Utilizar a documentação do proprio Robot localizada no git


- Chrome Driver: https://chromedriver.chromium.org/ 
Possuir a versão atual do chrome driver instaldo no computador, conforme tutorial https://medium.com/@reiload_88128/instalando-os-drivers-chrome-firefox-ie-no-windows-6873aec7d67b 

### instalando dependencias 

Pelo terminar inserir o comando 

```
pip3 install -r requirements.txt
```

Ele irá instalar toda as dependencias do projeto, configuradas no arquivo. 


## Rodar os cenários 

- Rodando toda a feature

````
robot -d ./log feature/titile.robot
```` 

- Rodando uma tag 

```
robot -d ./log -i tag feature/checkbox.robot
```