# web_robot_framework

This is a Robot Framework to test WebApplication as well as WenServices/REST APIs

The following are the constructs implemented:
a) Keyword driven framework.
b) Data Driver from external sources.
c) Page Object Modelling
d) Provision to run on different environments like QA, Prod.
e) Web Elements are located in seperated files so the change is element location does not impact the test case.
f) Can be run on Different browsers / OS (Linux / Windows)

Below is top->down workflow of how the excution is achieved.
1) Each feature has respective Test cases are in Tests folder ( Tests/WebApp/GuestUser/CheckOut.robot )
2) Test feature file uses Keywords defined in  respective Keyword file ( Resources/WebApp/Keywords/GuestUser/CheckOut.robot )
3) Feature Keywords file call Keywords acrosss Page Objects folder ( Resources/WebApp/Pageobjects )
4) Keywords in Page Object files call the keywords from robotfrmaework-seleniumlibrary and other builtin and external libraries.
5) keywords from robotfrmaework-seleniumlibrary call the functions exposed by seleniumlibrary.
6) Selenium Library inturn triggers API call to the WebBrowser Driver using JSON Wireprotocol.
7) API call triggger the actions on the Web Browser.

NOTE:
Please make sure the webdriver to WebBrowwser requirements are met 
ex: In case of Chrome Webdriver version is supported for your Chrome Browser version
    In case of IE, Make sure "Protection Mode" is enabled.

Prerequsets:

1) Install Python and add it to your PATH environment variable.
2) Install robotframework and robotframework-seleniumlibrary using the below commnds
   pip install robotframework
   pip install robotframework-seleniumlibrary
3) Install Pycharm and set Python Interpreter.
4) Git Clone the repository using the below command
   git clone git@github.com:pubsgit/web_robot_framework.git
5) Run the below command to run all the test cases with "Smoke" tag.
   cd web_robot_framework\
   robot -d Results\WebApp -i Smoke Tests\WebApp\GuestUser\CheckOut.robot

Results:
localhost#123131123131> robot -d Results\WebApp -i Smoke Tests\WebApp\GuestUser\CheckOut.robot
==============================================================================
CheckOut :: These cases are for Logged in user who wants to do a checkout
==============================================================================
Guest user should be able to search :: This test is to verify Gues...
DevTools listening on ws://127.0.0.1:57249/devtools/browser/0982f26d-2d87-446e-ac2d-306629c1b1c2
Guest user should be able to search :: This test is to verify Gues... | PASS |
------------------------------------------------------------------------------
CheckOut :: These cases are for Logged in user who wants to do a c... | PASS |
1 critical test, 1 passed, 0 failed
1 test total, 1 passed, 0 failed
==============================================================================
Output:  Amazon\Results\WebApp\output.xml
Log:     Amazon\Results\WebApp\log.html
Report:  Amazon\Results\WebApp\report.html
