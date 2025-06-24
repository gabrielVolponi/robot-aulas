# Robot Framework - Testes de Integridade de Dados

> Projeto de testes automatizados utilizando Robot Framework com as bibliotecas DataBase e SeleniumLibrary para garantir a integridade dos dados em dashboards de BI e no portal completo. O objetivo é verificar a consistência e a correção dos dados através de testes automatizados, integrando com ambientes de banco de dados e interfaces web.

## 💻 Pré-requisitos

Antes de começar, verifique se você atendeu aos seguintes requisitos:

* Você tem Python 3.x instalado
* Você instalou a versão mais recente de `pip`
* Você tem acesso a um ambiente de banco de dados configurado para rodar os testes de integridade
* Você possui o ChromeDriver ou outro driver de navegador configurado para o Selenium
* Você leu a documentação do Robot Framework
* **É necessário estar conectado à VPN da empresa** para acessar o ambiente de banco de dados e os portais a serem testados

## 📚 Documentação

A documentação do Robot Framework está disponível em:  
[Robot Framework Documentation](https://robotframework.org/)

## 🚀 Instalando o Projeto

Para instalar o ambiente de teste, siga as etapas abaixo:

1. Clone o repositório em sua máquina.
2. Navegue até a pasta do repositório.
3. Instale as dependências necessárias executando o comando:

```bash
pip install -r requirements.txt
```

## ☕ Rodando os Testes
Para rodar os testes automatizados, utilize o comando:

```bash
robot -d reports -i {nome da tag} .
```
Este comando executa os testes correspondentes à tag especificada e gera os relatórios na pasta Reports.


## 📖 Exemplos de Execução:
Para rodar todos os testes com a tag teste_integridade:
```bash
robot -d reports -i teste_integridade .
```


⬆ Voltar ao topo