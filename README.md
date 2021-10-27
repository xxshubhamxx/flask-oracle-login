<h1>
Configuration Instructions 
</h1>
A few configuration Instructions to run this on your local machine:

- Download and extract this repository in your local system.

- Open a terminal in VSCode and run the command ```pip install bcrypt``` in your local system to download the encrypting and decrypting python module/library used in this project.

- go to `flaskblog/__init__.py` file and change line 9 which says ```app.config['SQLALCHEMY_DATABASE_URI'] = 'oracle://system:system@127.0.0.1:1521/XE'``` to your oracle database credentials. This is in the form of: 
```app.config['SQLALCHEMY_DATABASE_URI'] = 'oracle://<username>:<password>@<host>:<port>/<service_name>'```

- After changing the password in `flaskblog/__init__.py` file, go to `flaskblog/orac.sql` and copy paste the code and run it using SQL Developer or VSCode(if connected to Oracle Database) so that the 2 required tables with 1 table having a single row of data is created in your database.

- Now, you are ready to run and check the website. Just go to `run.py` file in the root directory of this repository and run the `run.py` file in your VSCode.


<br>

<h1>
Acknowledgement
</h1>

I have no idea how this project works. I just searched for a video which is making a login+registration form using flask_login with source code on youtube. I knew I won't find it with oracle so I didn't bother searching for it. Found a good video with source code which was using sqlite database and converted it to Oracle Database. But I am yet to watch that video to understand the application.

Changes made: 
- You cant use "user" as a table name in oracle, so I had to change it from "User" to 'User2" , not just in models.py, but also in forms.py and routes.py files.
- inside `flaskblog/__init__.py` , I commented out the previous SQLALCHEMY_DATABASE_URI which was referring to sqlite and added my own SQLALCHEMY_DATABASE_URI with my oracle db credentials.
- Line 42 in routes.py also had to be changed because oracle was giving me error saying that it cant insert null value in column named id, which is a primary key. I tried using a different primary key but it didn't work, so I left it like that and made my python code insert a random value between 0 and 99999999999999 everytime as the user_id
- Lastly, I wrote OracleSQL Script present in orac.sql which needs to be executed before running the app

Video Link: https://www.youtube.com/watch?v=CSHx6eCkmv0
