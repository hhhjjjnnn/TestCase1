# TestCase1
Test Case 1 solution for https://automationexercise.com/test_cases


## Installation instructions: 
You need to already have Visual Studio, python, Robot Framework Language Server extension on Visual Studio, and seleniumlibrary installed on your pc.


####  Detailed Test Steps for Test Case 1 to practice Automation testing on RobotFramework

1. Launch browser
2. Navigate to url 'http://automationexercise.com'
3. Verify that home page is visible successfully
4. Click on 'Signup / Login' button
5. Verify 'New User Signup!' is visible
6. Enter name and email address
7. Click 'Signup' button
8. Verify that 'ENTER ACCOUNT INFORMATION' is visible
9. Fill details: Title, Name, Email, Password, Date of birth
10. Select checkbox 'Sign up for our newsletter!'
11. Select checkbox 'Receive special offers from our partners!'
12. Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
13. Click 'Create Account button'
14. Verify that 'ACCOUNT CREATED!' is visible
15. Click 'Continue' button
16. Verify that 'Logged in as username' is visible
17. Click 'Delete Account' button
18. Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button


## RANDOM_email.robot file 
In this file, I am using the keyword "Generate Random String" to generate a random string which will be used instead of a given email. 
The other steps are the same as in TestCase1.robot
