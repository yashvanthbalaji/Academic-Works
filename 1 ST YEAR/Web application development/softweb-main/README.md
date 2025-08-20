# Ex.07 Software Product Company Website
## Date: 25.04.2024

## AIM:
To develop a static company website to display the softwares and services provided by the company.

## DESIGN STEPS:

### Step 1:
Requirement collection.

### Step 2:
Creating the layout using HTML and CSS.

### Step 3:
Updating the sample content.

### Step 4:
Choose the appropriate style and color scheme.

### Step 5:
Validate the layout in various browsers.

### Step 6:
Validate the HTML code.

### Step 7:
Publish the website in the given URL.

## PROGRAM:

website.html

```


<html>
<head>
  <title>LETS MED</title>
  <style>
    body {
      font-family: 'Times New Roman', Times, serif, sans-serif;
      margin: 0;
      padding: 0;
    }

    header {
      background-color:rgb(177, 204, 4);
      color:rgb(236, 236, 236);
      padding: 10px 0;
    }

    nav {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 0 20px;
    }

    nav .container {
      display: flex;
      align-items: center;
    }

    nav img {
      margin-right: 10px;
    }

    nav h1 {
      margin: 0;
    }

    nav ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
    }

    nav ul li {
      display: inline;
    }

    nav ul li a {
      text-decoration: none;
      color: #fff;
      margin: 0 15px;
    }

    nav ul li a:hover {
      color: #ffd700; 
    }

    section {
      padding: 50px;
    }
    .home{
        padding-left: 1100px;
        margin-bottom: 150px;
        padding-top: 40px;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    footer {
      background-color: rgb(157, 230, 13);
      color: #fff;
      text-align: center;
      padding: 8px;
      position: fixed;
      bottom: 0;
      width: 100%;
    }

  </style>
</head>
    <body bgcolor="red" background="1.avif" style="background-size: cover;">
    <header>
        <nav>
          <div class="container">
            <img src="2.jpg" height="50px" width="80px">
            <h1>LETS MED</h1>
          </div>
          <ul>
            <li><a href="website.html">Home</a></li>
            <li><a href="plan.html">Plans</a></li>
            <li><a href="doctors.html">Doctors</a></li>
            <li><a href="contact.html">Contact Us</a></li>
          </ul>
        </nav>
      </header>

  <div class="home">
    <h1   style="color: white;"><br>"STAY POSITIVE,MOVE POSITIVE." <br> </h1> 
    <p  style="color: white;"><br>A mental health clinic is a specialized healthcare facility dedicated to providing comprehensive services for individuals dealing with various mental health concerns and conditions. These clinics offer a range of therapeutic interventions, counseling, psychiatric evaluations, medication management, and support services tailored to meet the unique needs of each client.</b></p>
  </div>

  <footer>
    <p>&copy; LETS MED All rights reserved.</p>
  </footer>

</body>
</html>

```

plan.html

```

<html>
<head>
    <title>Plans</title>
    <style>
        
        body {
          font-family: 'Times New Roman', Times, serif, sans-serif;
          margin: 0;
          padding: 0;
          color: white;
        }
    
        header {
          background-color: rgb(45, 246, 0);
          color: #fff;
          padding: 10px 0;
        }
    
        nav {
          display: flex;
          justify-content: space-between;
          align-items: center;
          padding: 0 20px;
        }
    
        nav .container {
          display: flex;
          align-items: center;
        }
    
        nav img {
          margin-right: 10px;
        }
    
        nav h1 {
          margin: 0;
        }
    
        nav ul {
          list-style-type: none;
          margin: 0;
          padding: 0;
        }
    
        nav ul li {
          display: inline;
        }
    
        nav ul li a {
          text-decoration: none;
          color: #fff;
          margin: 0 15px;
        }
    
        nav ul li a:hover {
          color: #ffd700; 
        }
    
        section {
          padding: 50px;
        }
    
        footer {
          background-color:rgb(24, 235, 5);
          color:white;
          text-align: center;
          padding: 5px 0;
          position: fixed;
          bottom: 0;
          width: 100%;
        }
        .container1 {
      max-width: 1200px;
      margin: 0 auto;
      padding: 18px;
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
    }

    .product {
      text-align: center;
      margin-bottom: 50px;
      flex-basis: calc(25% - 20px); 
      border: 5px solid pink; 
      padding: 20px;
      box-sizing: border-box;
    }

    .product img {
      max-width: 100%;
      height: 200px; 
      width: 200px; 
      object-fit: cover; 
      margin-bottom: 10px;
    }

    .product-info {
      margin-top: 20px;
    }

    .product-name {
      font-weight: bold;
      font-size: 18px;
    }

    .product-description {
      font-size: 16px;
      margin-top: 10px;
    }

    .product-price {
      font-size: 16px;
      margin-top: 10px;
      color:rgb(199, 215, 15)
    }
    .buy {
      background-color: #007bff;
      color: #fff;
      border: none;
      padding: 10px 20px;
      font-size: 16px;
      cursor: pointer;
    }
      </style>
</head>
<body bgcolor="red" background="7.jpeg" style="background-size: cover;"> 
    <header>
        <nav>
          <div class="container">
            <img src="2.jpg" height="50px" width="80px">
            <h1>LETS MED</h1>
          </div>
          <ul>
            <li><a href="website.html">Home</a></li>
            <li><a href="plan.html">Plans</a></li>
            <li><a href="doctors.html">Doctors</a></li>
            <li><a href="contact.html">Contact Us</a></li>
          </ul>
        </nav>
      </header>
      <h1 align="center">Plans</h1>
      <div class="container1">
        <div class="product">
          <img src="3.jpeg" alt="Product 1">
          <div class="product-info">
            <div class="product-name"> Group Therapy </div>
            <div class="product-description">Facilitate group therapy sessions focused on common issues or themes, such as stress management, mindfulness, interpersonal skills, or coping with grief, to foster peer support and connection.  <b>Weekly once</b></div>
            <div class="product-price">Rs.2000</div>
            <button class="buy">Enroll Now</button>

          </div>
        </div>
        <div class="product">
          <img src="4.jpeg" alt="Product 2">
          <div class="product-info">
            <div class="product-name">Individual Therapy </div>
            <div class="product-description"> Provide one-on-one counseling sessions with licensed therapists or psychologists to address specific mental health concerns, such as anxiety, depression, trauma, or substance abuse. <b>Weekly twice</b></div>
            <div class="product-price">Rs.2500</div>
            <button class="buy">Enroll Now</button>

          </div>
        </div>
    
        <div class="product">
          <img src="5.jpeg" alt="Product 3">
          <div class="product-info">
            <div class="product-name">Family Counseling</div>
            <div class="product-description">Offer family therapy sessions to address relational dynamics, communication challenges, and family conflicts that may impact the mental health and well-being of individuals. <b>Weekly twice</b></div>
            <div class="product-price">Rs.3500</div>
            <button class="buy">Enroll Now</button>

          </div>
        </div>
    
        <div class="product">
          <img src="6.jpeg" alt="Product 4">
          <div class="product-info">
            <div class="product-name">Specialized Treatment</div>
            <div class="product-description">Develop specialized treatment tracks or programs for specific populations or conditions, such as youth mental health, LGBTQ+ affirming therapy, trauma recovery, or addiction recovery. <b>Weekends</b></div>
            <div class="product-price">Rs.5000</div>
            <button class="buy">Enroll Now</button>

          </div>
        </div>
      </div>

      <footer>
        <p>&copy; LETS MED All rights reserved.</p>
      </footer>
</body>
</html>

```

doctors.html

```

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctors</title>
    <style>
        body {
          font-family: Arial, sans-serif;
          margin: 0;
          padding: 0;
          color: white;
        }
    
        header {
          background-color:rgb(13, 210, 228);
          color: #fff;
          padding: 10px 0;
        }
    
        nav {
          display: flex;
          justify-content: space-between;
          align-items: center;
          padding: 0 20px;
        }
    
        nav .container {
          display: flex;
          align-items: center;
        }
    
        nav img {
          margin-right: 10px;
        }
    
        nav h1 {
          margin: 0;
        }
    
        nav ul {
          list-style-type: none;
          margin: 0;
          padding: 0;
        }
    
        nav ul li {
          display: inline;
        }
    
        nav ul li a {
          text-decoration: none;
          color: #fff;
          margin: 0 15px;
        }
    
        nav ul li a:hover {
          color: #ffd700; 
        }
    
        section {
          padding: 10px;
          text-align: center;
        }
    
        footer {
          background-color: rgb(15, 135, 221);
          color: #fff;
          text-align: center;
          padding: 20px 0;
          position: fixed;
          bottom: 0;
          width: 100%;
        }
        .container1 {
      max-width: 1200px;
      margin: 0 auto;
      padding: 20px;
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
    }

    .member {
      text-align: center;
      margin-bottom: 5px;
      flex-basis: calc(25% - 20px); 
      border: 3px solid peru; 
      padding: 5px;
      box-sizing: border-box;
    }

    .member img {
      max-width: 100%;
      height: 150;
      width: 150px; 
      margin-bottom: 20px;
    }

    .member-name {
      font-weight: bold;
      font-size: 18px;
    }

    .member-designation {
      font-size: 16px;
      margin-top: 10px;
    }
    .team{
        padding-left: 20px;
    }
    
      </style>
</head>
<body bgcolor="red" background="11.jpeg" style="background-size: cover;">
    <header>
        <nav>
          <div class="container">
            <img src="2.jpg" height="50px" width="80px">
            <h1>LETS MED</h1>
          </div>
          <ul>
            <li><a href="website.html">Home</a></li>
            <li><a href="plan.html">Plans</a></li>
            <li><a href="doctors.html">Doctors</a></li>
            <li><a href="contact.html">Contact Us</a></li>
          </ul>
        </nav>
      </header>
    
      <div class="team">
        <h1> Our Team</h1 >
            <p>Doctors</p>
      </div>
        
      

      <div class="container1">
        <div class="member">
          <img src="d1.jpeg">
          <div class="member-info">
            <div class="member-name">DR.THALAPATHY</div>
            
          </div>
        </div>
    
        <div class="member">
          <img src="d2.webp">
          <div class="member-info">
            <div class="member-name">DR.SK</div>
        
          </div>
        </div>
    
        <div class="member">
          <img src="d3.jpg" >
          <div class="member-info">
            <div class="member-name">DR.SAM</div>
            
          </div>
        </div>
    
        <div class="member">
          <img src="d4.jpg">
          <div class="member-info">
            <div class="member-name">DR.REMO</div>
            
          </div>
        </div>
      </div>

      <footer>
        <p>&copy; LETS MED All rights reserved.</p>
      </footer>
</body>
</html>
```

contacts.html

```

<html>
<head>
    <title>Contact</title>
    <style>
        body {
          font-family: Arial, sans-serif;
          margin: 0;
          padding: 0;
        }
    
        header {
          background-color:rgb(6, 163, 191);
          color: #fff;
          padding: 10px 0;
        }
    
        nav {
          display: flex;
          justify-content: space-between;
          align-items: center;
          padding: 0 20px;
        }
    
        nav .container {
          display: flex;
          align-items: center;
        }
    
        nav img {
          margin-right: 10px;
        }
    
        nav h1 {
          margin: 0;
        }
    
        nav ul {
          list-style-type: none;
          margin: 0;
          padding: 0;
        }
    
        nav ul li {
          display: inline;
        }
    
        nav ul li a {
          text-decoration: none;
          color: #fff;
          margin: 0 15px;
        }
    
        nav ul li a:hover {
          color: #ffd700; 
        }
    
        section {
          padding: 50px;
        }
    
        footer {
          background-color: rgb(0, 0, 0);
          color: #fff;
          text-align: center;
          padding: 20px 0;
          position: fixed;
          bottom: 0;
          width: 100%;
        }
    
    

.contact-box {
  max-width: 500px;
  margin: 50px auto;
  margin-top: 120px;
  padding: 30px;
  border: 4px solid black;
  border-radius: 10px;
  text-align: center;
}

.contact-info {
  margin-bottom: 20px;
}

.contact-info p {
  margin: 5px 0;
}

.subscribe-form {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.subscribe-form h3 {
  margin-bottom: 10px;
  color: #333;
}

.subscribe-form input[type="email"] {
  width: 100%;
  padding: 10px;
  margin-bottom: 10px;
  border-radius: 5px;
  border: 2px solid #ccc;
}

.subscribe-form button {
  padding: 10px 20px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}
</style>

</head>
<body bgcolor="red" background="22.jpeg" style="background-size: cover;">

    <header>
        <nav>
          <div class="container">
            <img src="2.jpg" height="50px" width="80px">
            <h1>LETS MED</h1>
          </div>
          <ul>
            <li><a href="website.html">Home</a></li>
            <li><a href="plan.html">Plans</a></li>
            <li><a href="doctors.html">Doctors</a></li>
            <li><a href="contact.html">Contact Us</a></li>
          </ul>
        </nav>
      </header>

      <div class="contact-box">
        <h2>Contact Us ON</h2>
        <p>Your well-being is important to us. If you have any questions or concerns, please feel free to reach out. .</p>
        <div class="contact-info">
          <p>Email: <a href="mailto:thoughtsofminds@example.com">thoughtsofminds@example.com</a></p>
          <p>Toll Free : 1800 110 420</p>
        </div>
        <form class="subscribe-form">
          <h3>Subscribe to Our WEB</h3>
          <input type="email" name="email" placeholder="Enter your email address">
          <button type="submit">Subscribe</button>
        </form>
    </div>

      <footer>
        <p>&copy; LETS MED All rights reserved.</p>
      </footer>
</body>
</html>
```







## OUTPUT:

![alt text](<Screenshot (99).png>)
![alt text](<Screenshot (100).png>)
![alt text](<Screenshot (101).png>)
![alt text](<Screenshot (102).png>)

## RESULT:
The program for designing software company website using HTML and CSS is completed successfully.
