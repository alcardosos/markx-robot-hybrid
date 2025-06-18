*** Settings ***
Documentation        Suite de testes do cadastro de tarefas

Resource         ../resources/base.resource

Test Setup       Start session
Test Teardown    Finish session

*** Test Cases ***
Deve poder cadastrar uma nova tarefa
    [Tags]    CT01

    ${task}        Set Variable        Estudar Python
    Remove task from database    ${task}

    Do login
    Create a new task    ${task}
    Should have task     ${task}

Deve poder remover uma tarefa indesejada
    [Tags]    CT02
    
    ${task}      Set Variable        Comprar refrigerante
    Remove task from database        ${task}
    
    Do login
    Create a new task    ${task}
    Should have task     ${task}

    Remove task by name                  ${task}
    Wait Until Page Does Not Contain     ${task}

Deve poder concluir uma tarefa
    [Tags]    CT03
    
    ${task}      Set Variable        Estudar XPath
    Remove task from database        ${task}
    
    Do login
    Create a new task    ${task}
    Should have task     ${task}

    Finish task            ${task}
    Task should be done    ${task}