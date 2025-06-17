# Automação MarkX

---

## Descrição

Projeto de automação mobile do app de testes markX (gerenciador de tarefas para android), resultado dos estudos de automação com Robot Framework + Appium para Android.

---

## Funcionalidades

* Automação de testes de interface mobile.
* Geração de relatórios e evidências de teste.
* Suporte para dispositivos Android e iOS.

---

## Tecnologias Utilizadas

* **Frameworks de Automação:** Appium / Robot
* **Sistema Operacional:**  Android / iOS
* **Outras bibliotecas:**  Appium Library

---

## Pré-requisitos

Software e Ferramentas:

* Java Development Kit (JDK): Necessário para o Appium.
* Android SDK: Para testes em Android.
* Xcode: Para testes em iOS (requer um Mac).
* Appium Server: O core que permite a comunicação entre os testes e os dispositivos.
* Appium Desktop (opcional): Interface gráfica para o Appium Server, útil para inspeção de elementos.
* Python: Linguagem de programação para o Robot Framework.
* Robot Framework: Framework de automação de testes.
* Bibliotecas Robot Framework:
    * robotframework-appiumlibrary: Biblioteca específica para interação com o Appium.
    * Outras bibliotecas, dependendo das necessidades do projeto (ex: SeleniumLibrary, RequestsLibrary).
* Node.js e npm (gerenciador de pacotes Node): Para instalar dependências e executar scripts.
* IDE (Ambiente de Desenvolvimento Integrado - opcional): Para facilitar a escrita e execução dos testes (ex: VS Code, PyCharm, Eclipse).

Dispositivos/Emuladores/Simuladores:

* Dispositivo físico Android: Conectado via USB.
* Emulador Android (AVD): Criado via Android Studio ou linha de comando.
* Dispositivo físico iOS: Conectado via USB (requer um Mac).
* Simulador iOS: Disponível no Xcode (requer um Mac).

Dependências e Configurações:

* Variáveis de Ambiente: Configuração de caminhos para JDK, Android SDK, etc.
* Drivers Appium: Necessários para comunicação com dispositivos específicos (ex: UIAutomator2 para Android, XCUITest para iOS).

---

## Como Executar

```bash
Baixe este projeto

Instale as dependências do projeto
    acessar a pasta do projeto no terminal
    npm install


Inicie o servidor Appium no terminal
    ex: usuario@teste markx-robot appium

Abra o dispositivo mobile (inicialize o emulador ou conecte o dispositivo físico)

Abra o projeto

Acesse via terminal, acesse a pasta "API" dentro da pasta "apps" e faça a instalação
    npm install

Rode o teste no terminal o arquivo de teste
    ex: robot -d .logs tests/home.robot
```

---

## Desenvolvido por:

Alan Cardoso de Almeida