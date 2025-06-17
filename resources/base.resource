*** Settings ***
Documentation            Tudo deve começar nesse arquivo

Library     AppiumLibrary
Library     libs/mongo.py

Resource       env.resource
Resource       screens/${PLATFORM}/login.resource
Resource       screens/android/tasks.resource

*** Keywords ***
Start session

    Run Keyword If     '${PLATFORM}' == 'android'
    ...       Open Application    http://localhost:4723
    ...       automationName=uiautomator2
    ...       platformName=Android
    ...       deviceName=Emulator
    ...       udid=emulator-5554
    ...       autoGrantPermissions=true
    ...       app=${EXECDIR}/apps/markx.apk
    
    Run Keyword If     '${PLATFORM}' == 'ios'
    ...       Open Application    http://localhost:4723
    ...       automationName=XCUiTest
    ...       platformName=iOS
    ...       deviceName=iPhone 13 Pro Max
    ...       udid=AB49A277-A56E-40D5-9FEA-F0E40F9E6000
    ...       autoAcceptedAlerts=true
    ...       app=${EXECDIR}/apps/markX.app
    ...       platformVersion=15.5
    ...       bundleId=com.qaxperience.markx

    Wait Until Page Contains    Endereço IP da Api    10

Finish session
    Capture Page Screenshot
    Close Application