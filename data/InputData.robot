
*** Variables ***
${INVALID_CREDENTIALS_PATH_CSV}  ./data/Users.csv
# Input Data
&{UNREGISTERED_USER}  Email=someone@notregistered.com  Password=TestPassword!  ExpectedErrorMessage=You haven't signed up yet. Try a different email address or
&{INVALID_PASSWORD_USER}  Email=someone@registereduser.com  Password=TestPassword!  ExpectedErrorMessage=Please double check your password. It should be 6 or more characters with no spaces. If you don't remember it, you can
&{BLANK_CREDENTIALS_USER}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=Please enter your email address and password.