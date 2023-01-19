*** Settings ***
Library    SeleniumLibrary
Variables    ../Variables/variabla.py
Variables    ../Variables/mydata_variabla.py

*** Keywords ***
Go to HomePage
    Open Browser    ${url}    ${browser}  
    Maximize Browser Window
    Page Should Contain Link    ${products_link}    #homepage is visible successfully

Add Product To Cart
    [Arguments]    ${product_to_add_to_cart_locator}
    Click Link    ${product_to_add_to_cart_locator}
    Wait Until Element Is Visible    ${continue_shopping_afteraddingtocart}
    Click Element    ${continue_shopping_afteraddingtocart}

Sign Up (Keyword) - First Page
    [Arguments]    ${emri_im}    ${emaili_im}
    Input Text    ${Name}    ${emri_im}
    Input Text    ${Email}    ${emaili_im}
    Click Button    ${SignUp}

Sign Up enter account info - title, name, email, password, birth data
    [Arguments]    ${my_account_name}    ${my_pass}    ${my_gender_forsignup_radio}    ${dita_ime}    ${muaji_im}    ${viti_im}
    Input Text    ${name_register}    ${my_account_name}
    Input Password    ${password_register}    ${my_pass}
    Page Should Contain    Enter Account Information
    Scroll Element Into View    //b[text()='Address Information']

    Select Radio Button    ${gender_groupname}    ${my_gender_forsignup_radio}
    Radio Button Should Be Set To    ${gender_groupname}    ${my_gender_forsignup_radio}
    Scroll Element Into View    ${lastname_input}

    Select From List By Value    ${day_ofbirth_list}   ${dita_ime}
    List Selection Should Be    ${day_ofbirth_list}   ${dita_ime}
    Select From List By Value    ${month_ofbirth_list}    ${muaji_im}
    List Selection Should Be    ${month_ofbirth_list}    ${muaji_im}
    Select From List By Value    ${year_ofbirth_list}    ${viti_im}
    List Selection Should Be    ${year_ofbirth_list}    ${viti_im}

Sign Up enter address info - first name, last name, company, address1, address2, country, state, city, zipcode, mobile number
    [Arguments]    ${emri_im}    ${mbiemri_im}    ${kompania}    ${ad1}    ${ad2}    ${country_im}    ${shteti_im}    ${qyteti_im}    ${my_zipcode}    ${numri_im}
    Scroll Element Into View    ${city_input}
    Input Text    ${firstname_input}    ${emri_im}
    Input Text    ${lastname_input}    ${mbiemri_im}
    Input Text    ${company_input}    ${kompania}
    Input Text    ${adr1_input}    ${ad1}
    Input Text    ${adr2_input}    ${ad2}
    
    Select From List By Value    ${country_input}    ${country_im}
    List Selection Should Be    ${country_input}    ${country_im}

    Input Text    ${state_input}    ${shteti_im}

    Scroll Element Into View    ${create_account_button}
    Input Text    ${city_input}    ${qyteti_im}
    Input Text    ${zipcode_input}    ${my_zipcode}
    Input Text    ${number_input}    ${numri_im}
        
Delete Account
    Go To    ${url}
    Click Element    ${delete_account_link}
    Page Should Contain    Account Deleted!
    Click Element    ${continue_after_deletion}