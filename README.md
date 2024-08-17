# The-Unity-Bank--main
Graduate Rotational Internship Program - The Sparks Foundation
Problem Statement
Create a simple dynamic website which has the following specs.
Start with creating a dummy data in database for upto 10 customers. Database options: Mysql, Mongo, Postgres, etc. Customers table will have basic fields such as name, email, current balance etc. Transfers table will record all transfers happened.
Flow: Home Page > View all Customers > Select and View one Customer > Transfer Money > Select customer to transfer to > View all Customers .
No Login Page. No User Creation. Only transfer of money between multiple users.
Host the website at 000webhost, github.io, heroku app or any other free hosting provider. Check in code in gitlab.
About
Computerizing the transactions and entries is the main objective of the project. The application using PHP and MySQL handles some of the basic operations like 'view all users', 'Transfer of money between multiple users', 'Display all transactions'. The homepage consists of two buttons, Start Now, which allows the admin to get started with the application, allowing him to view all the registered users. Only admin can access the portal, and view all customers. Show transactions button allows the admin to view the history of all the transactions which allows the admin to track any credit/debit issue if any. In the view page, basic details like name, email of the user and their account balance is displayed. Once the admin clicks the transact button, the page redirects to transaction page where the detail of the person from whose account the money needs to be transfered is displayed. There is an option for the admin to select the person to which the entered amount needs to be transfered. This is shown via a dropdown where list of all the users available is displayed to make it an user friendly interface. Thus the admin transfers money between multiple users, in the transaction page. The transaction entry into the database is automated. Once the transaction is successful, the admin is redirected to 'all transactions' page, where all the transaction entries are shown to the admin. Every page has a redirect to home page, so that the admin can redirect to home page as required.
Screenshots
![Screenshot (51)](https://github.com/user-attachments/assets/ff730896-2481-4a0e-9b96-72ba9da90a43)

