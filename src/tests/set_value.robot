*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter is set to non zero value
    Go To  ${HOME_URL}
    Page Should Contain  nappia painettu
    Input Text  set_value  74
    Click Button  Aseta
    Page Should Contain  nappia painettu 74 kertaa