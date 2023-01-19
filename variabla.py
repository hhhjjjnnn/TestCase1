url = 'https://automationexercise.com/'
browser = 'chrome'


products_link = '//a[@href="/products"]'
signup_login_link = '//a[@href="/login"]'

continue_shopping_afteraddingtocart = '//button[@class="btn btn-success close-modal btn-block"]'

cart_link = '//i[@class="fa fa-shopping-cart"]//parent::a[@href="/view_cart"]'

proceed_to_checkout = "//a[@class='btn btn-default check_out'][text()='Proceed To Checkout']"


## register
Name = '//input[@data-qa="signup-name"]'
Email = '//input[@data-qa="signup-email"]'
SignUp = '//button[@data-qa="signup-button"]'
gender_groupname = 'title'

name_register = '//input[@id="name"]'
password_register = '//input[@id="password"]'

day_ofbirth_list = '//select[@id="days"]'
month_ofbirth_list = '//select[@id="months"]'
year_ofbirth_list = '//select[@id="years"]'

newsletter_checkbox = '//input[@id="newsletter"]'
specialoffers_checkbox = '//input[@id="optin"]'

#address info when registering
firstname_input = '//input[@id="first_name"]'
lastname_input = '//input[@id="last_name"]'
company_input = '//input[@id="company"]'
adr1_input = '//input[@id="address1"]'
adr2_input = '//input[@id="address2"]'
country_input = '//select[@id="country"]'
state_input = '//input[@id="state"]'
city_input = '//input[@id="city"]'

zipcode_input = '//input[@id="zipcode"]'
number_input = '//input[@id="mobile_number"]'

create_account_button = '//button[@type="submit"][@data-qa="create-account"]'
continue_button = '//a[@data-qa="continue-button"]'


### delete account
delete_account_link = '//a[@href="/delete_account"]'
continue_after_deletion = '//a[@data-qa="continue-button"]'