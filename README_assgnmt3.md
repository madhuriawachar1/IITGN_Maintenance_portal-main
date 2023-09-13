# Assignment-3

# Project Title:-

<font size=9> **Maintenance Portal**</font>

# Project Description:-
Our Project:<b>"Maintenance Portal of IIT Gandhinagar"</b> is a web-based platform that enables students  , staff members to report about issues and also track maintenance requests for the campus facilities. It is designed to streamline the process of submitting maintenance requests and improve the overall maintenance workflow.  

In our platform the users can access the portal through a web browser and login using their IIT Gandhinagar email credentials. Once logged in, web application will redirect to home page that contain options for housing, hostel,guest house and specific location. they can submit a maintenance request by filling out an online form that includes details such as the location of the issue, the type of problem, and a brief description of the issue.

Once a maintenance request is submitted, it is assigned a unique tracking number, and the user can track the status of their request through the portal.status of the request could be pending,Done,In progress. The maintenance team is notified of the request and will work on resolving the issue as soon as possible.
a Admin login link has been provided on login page.
Admin can login using one unique username and password.Once logged in admin can see all the complaints.

Users can also view the status of their previous maintenance requests.

The technology used for frontend: HTML, CSS, and JavaScript, whereas for the backend we have used MySQL and Flask.  

![](MaintainanceHomepage.png)
# Table of Content:

- [Assignment-3](#assignment-3)
- [Project Title:-](#project-title-)
- [Project Description:-](#project-description-)
- [Table of Content:](#table-of-content)
- [Installation](#installation)
- [Usage](#usage)
  - [User login/Register](#user-loginregister)
  - [Admin login](#admin-login)
  - [Execution of Dynamic Operations](#execution-of-dynamic-operations)
  - [Invalid html accesses:](#invalid-html-accesses)
- [Contributions](#contributions)
- [References](#references)
# Installation
* **1:** Create Database using this [SQL File](maintenance_portal.sql)
    * In  **db.yaml** file in password field you have to change according to your Mysql server password.

* **2:** Requirement for project installation:
  * a: Setting the enviroment using the following command-
    * For Windows:  python -m venv evn_flask
    * For Ubuntu/Mac: python3 -m venv evn_flask
    
    ![](./screenshorts/1.png)

  * b: Installing the packages, it can also be done using [Requirements](requirements.txt) with following command:

    * pip3 install -r requirements.txt
    * or installing all packages individually
    * pip install flask

    ![](./screenshorts/2.png)

    * pip install flask-mysqldb
    
    ![](./screenshorts/3.png)

    * pip install pyyaml

    ![](./screenshorts/4.png)

    * pip install authlib
    
    ![](./screenshorts/5.png)


    * pip install requests
  
  ![](./screenshorts/6.png)
 
  * For frogot password, OTP is sent by admin gmail_id. For testing purpose we used our personal iitgn gmial_id.
  * If you want to test this functionality you have to give your iitgn Email and password in def otp() function.

  * ```NOTE```: USE ONLY IITGN EMAIL_ID!!!
  
      ![](./screenshorts/def_otp.PNG)

  * For this you have to enable the less security function in your gmail account security .
  * 
       ![](./screenshorts/less_secure.PNG)
  # Usage
  ***
  ## User login/Register
  * The new user have to register himself first google authentication has been used to authenticate whether the user belongs to IIT Gandhinagar community or not.Then user can register him/herself by providing some basic information .
  
      ![](./screenshorts/8.png)
        ![](./screenshorts/9.png)
        ![](./screenshorts/11.png)


## Admin login
  * The website contain link for the admin login in which we can login by giving following credentials :-
  

  *  user_id= admin
  
  * password = pass

## Execution of Dynamic Operations





- [x] insert
- [ ] update
- [ ] delete
- [ ] rename
- [x] where clause
  
  * complaint about the electricity in the hostel room
   
   ![](./screenshorts/Hostel_complain.PNG)

  * complaint successful
    
![](./screenshorts/success.PNG)

* The database table before the complaint 

![](./screenshorts/before_query.PNG)

* The database after the complaint

![](./screenshorts/after_query.PNG)


- [ ] insert
- [x] update
- [ ] delete
- [ ] rename
- [ ] where clause


* updating password of user

![](./screenshorts/Reset_pass_page.PNG)

* updating new password

![](./screenshorts/pass_change.PNG)

* database table before password update


![](./screenshorts/pass_before.PNG)

* Otp send by server
  
![](./screenshorts/Otp_mail.PNG)

* Password change succesful
  
![](./screenshorts/hooray.PNG)

* updated database table after password change
  
![](./screenshorts/pass_after.PNG)

![](./screenshorts/admin.jpeg)


* Admin can view the image as follows: [VIDEO](./screenshorts/video/display_image.webm)
  
## Invalid html accesses:
* No one can access any other page without login, for clarification look at [Video](./screenshorts/video/invalid_access.webm)

 * Image is optional, thus image column can be either a clickable link or NULL.

# Contributions

* Responsibility of Group G1 :- Frontend development using html ,css ,javascript. followings are contributors 
  <font color="green">
    * Prajwal Jivtode - Admin Complaint Dashboard, Homepage with CSS
    * Rishi Katkar - Login Page, Register page, Admin Login with CSS
    * Onkar Mishra - Login Page, Register Page, Sign Up with google page, Housing, Hostel ,With CSS
    * Priyanshu Mishra - Login Page, Register page, Admin Login ,With CSS
    * Madhuri Awachar - Frontend and backend tester, logout page,With CSS
    * Pooja Goel  - forgot password, helped in [readme.md](README.md)
    * Pinki Kumari - backend testing, guest house
    * Harshit Chauhan - specific location page
  </font>
* Responsibility of Group G2 :- All the Backend work including database conectivity using python, mysql and flask.
    <font color="green">
    * Sai Krishna Avula - Image storing and retrieval, Complaint registration, Google sign-in (authentication), Implementation and bug-fixes
    * Ritesh Patidar - Login, Registration, helped in all backend work, made [readme.md](README.md)
    * Sujeet Kumar Yadav - OTP generation code, form fills
    </font>

* Responsibility of both G1 and G2 :- Creation of database of the maintenance portal of IIT Gandhinagar


# References

* [Geeksforgeeks](https://www.geeksforgeeks.org/profile-application-using-python-flask-and-mysql/)

* [Flask_documentation](https://flask.palletsprojects.com/en/2.2.x/)

* [youtube](https://youtu.be/L5WWrGMsnpw)

* [Google Sign-In](https://developers.google.com/identity/sign-in/web/sign-in)
  




  The HTTP 429 Too Many Requests response status code indicates the user has sent too many requests in a given amount of time ("rate limiting")
















  





