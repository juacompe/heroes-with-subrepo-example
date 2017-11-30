*** Settings ***
Library  SeleniumLibrary
Suite Setup     I'm At Home Page
Suite Teardown  Close All Browsers

*** Variables ***
${BASE_URL}  http://192.168.99.100:31000/

*** Test cases ***
Get Home Page
    Given I'm At Home Page
    Then Page Should Contain  Tour of Heroes

List Heroes
    Given I'm At Home Page
    When I Go To Heroes Page
    Then I Should See A Hero

*** Keywords ***
I'm At Home Page
    Open Browser  ${BASE_URL}  gc

I Go To Heroes Page
    Click Link  Heroes
    Wait Until Page Contains  My Heroes

I Should See A Hero
    Wait Until Page Contains  Tornado
