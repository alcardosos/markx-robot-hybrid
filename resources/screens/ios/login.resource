*** Settings ***
Documentation            Elementos e ações da tela de login para iOS

Library       AppiumLibrary

*** Variables ***
${API_IP}         192.168.15.27


*** Keywords ***
Do login
    Input Text       accessibility_id=apiIp       ${API_IP}
    Click Element    accessibility_id=signInButton