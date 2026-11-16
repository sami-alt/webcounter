*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter

*** Test Cases ***
When counter has a nonzero value and it is reset the value becomes zero
    Go To  ${HOME_URL}
    Click  button >> text=Paina
    Click  button >> text=Paina
    Click  button >> text=Nollaa
    Get Text  body  *=  nappia painettu 0 kertaa

When a value is set the counter shows that value
    Fill Text  input#value  42
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 42 kertaa
