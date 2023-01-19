*** Settings ***
Resource    ../Resources/import.resource 
Test Setup    Go to HomePage
Library    String

*** Variables ***
${fundi_emailit}    @gmail.com

*** Test Cases ***
Test Case PROVE PER Random email ACCOUNT
    Click Link    ${signup_login_link}
    Page Should Contain    New User Signup!
    
    ${random_string} =  Generate Random String
    
    ${RANDOM_EMAIL}    Set Variable    ${random_string}${fundi_emailit}

    Sign Up (Keyword) - First Page    ${random_string}    ${RANDOM_EMAIL}

    Sign Up enter account info - title, name, email, password, birth data    ${my_account_name}    ${my_pass}    ${my_gender_forsignup_radio}    ${dita_ime}    ${muaji_im}    ${viti_im}
    
    Select Checkbox    ${newsletter_checkbox}
    Checkbox Should Be Selected    ${newsletter_checkbox}
    Select Checkbox    ${specialoffers_checkbox}
    Checkbox Should Be Selected    ${specialoffers_checkbox}

    ## adding address info
    Sign Up enter address info - first name, last name, company, address1, address2, country, state, city, zipcode, mobile number    ${random_string}    ${mbiemri_im}    ${kompania}    ${ad1}    ${ad2}    ${country_im}    ${shteti_im}    ${qyteti_im}    ${my_zipcode}    ${numri_im}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

    Click Button    ${create_account_button}
    Wait Until Page Contains    Account Created!
    Page Should Contain    Account Created!
    Click Element    ${continue_button}
    Reload Page
    Click Element    ${continue_button}
    Wait Until Page Contains Element    ${cart_link}
    Page Should Contain     Logged in as ${emri_im} ${mbiemri_im}
    
    Delete Account
    