# Ex04 Places Around Me
## Date: 23.03.2024

## AIM
To develop a website to display details about the places around my house.

## DESIGN STEPS

### STEP 1
Create a Django admin interface.

### STEP 2
Download your city map from Google.

### STEP 3
Using ```<map>``` tag name the map.

### STEP 4
Create clickable regions in the image using ```<area>``` tag.

### STEP 5
Write HTML programs for all the regions identified.

### STEP 6
Execute the programs and publish them.

## CODE

```
map.html

<html>
    <head>
        <title>
            CUDDALORE
        </title>
    </head>
    <body>
        <h1 align="center">
            <font color="cyan"><b>CUDDALORE</b></font>
        </h1>
        <h3 align="center">
            <font color="red"><b>A.BALAJI (212223040023)</b></font>
        </h3>
        <center>
            
<map name="Melmaruvathur">
    <area shape="rect" coords="100,100,900,900" href="expmap.html" title="My Home Town"</map>
    

    <img src="map.png" usemap="#image-map">

<map name="image-map">
    <map name="image-map">
        <area target="" alt="HOTEL SAKTHI PARK" title="HOTEL SAKTHI PARK" href="hotel.html" coords="928,199" shape="rect">
        <area target="" alt="GB Public School" title="GB Public School" href="school.html" coords="664,264" shape="rect">
        <area target="" alt="Om Shakthi Temple" title="Om Shakthi Temple" href="temple.html" coords="835,251" shape="rect">
        <area target="" alt="mazhai madha shrine" title="mazhai madha shrine" href="shrine.html" coords="667,479,NaN" shape="circle">
        <area target="" alt="monalakshmi mahal" title="monalakshmi mahal" href="mahal.html" coords="839,472" shape="rect">
    
    </map>
</map>
        </center>
    </body>

</html>

hotel.html

<html>
    <head>
        <title>WOOD LANDS</title>
    </head>
    <body bgcolor="silver">
        <h1 align = "center">Welcome to WOOD LANDS</h1>
        <h2>

Conveniently nestled in the heart of [CUDDALORE], [WOOD LANDS] offers comfortable accommodation and modern amenities at an affordable price. Our 3-star hotel is perfect for both leisure and business travelers seeking a cozy retreat with easy access to local attractions and business hubs</h2>
<img src="hot.png" align="center"width="500" height="350">
<h3>Accommodation:
    Our hotel features well-appointed rooms designed to provide a relaxing stay. Each room is equipped with essential amenities including comfortable bedding, a private bathroom, flat-screen TV, work desk, and complimentary Wi-Fi. Whether you're traveling solo, with family, or on a business trip, our rooms offer the perfect blend of comfort and convenience.</h3>

<h3>Dining:
    Indulge in a culinary journey at our onsite restaurant, where you can savor a delicious selection of local and international dishes. Start your day with a hearty breakfast buffet or unwind with a sumptuous dinner after a day of exploring the city. Our friendly staff is dedicated to ensuring a delightful dining experience for all our guests.</h3>

<h3>Facilities:
    we strive to make your stay as enjoyable as possible. Take advantage of our facilities, including a fitness center to keep up with your workout routine, a business center for your professional needs, and a cozy lobby lounge where you can relax with a cup of coffee or catch up with fellow travelers. We also offer convenient services such as 24-hour reception, room service, and laundry facilities to cater to your every need.</h3>

<h3>Location:
    Ideally situated [mention proximity to landmarks, attractions, or transportation hubs], our hotel provides easy access to the city's vibrant culture, shopping districts, and business centers. Whether you're here for sightseeing or attending meetings, you'll find everything within reach from our centrally located establishment.
    </h3>
<h3>
    Hospitality:
    your comfort and satisfaction are our top priorities. Our dedicated staff is committed to providing personalized service and ensuring that your stay exceeds your expectations. From seamless check-in to attentive assistance throughout your stay, we go above and beyond to make you feel welcome and cared for
</h3>
        
    </body>
</html>

mahal.html

<html>
    <head>
        <title>GRAND Mahal</title>
    </head>
    <body bgcolor="gold">
        <h1 align = "center">Welcome GRAND Mahal</h1>
      <h2>
        GARND Mahal, also known as the Palace  is an architectural gem steeped in history, elegance, and grandeur. Located in the heart of Melmaruvathur, this majestic mahal stands as a testament to the opulence and refinement of its bygone era.

As you approach the mahal, you are greeted by imposing gates adorned with intricate carvings and elaborate motifs, hinting at the splendor that lies within. The mahal's façade, resplendent with domes, arches, and ornate balconies, exudes an aura of regal magnificence, captivating all who behold it.
      </h2>
       
<img src="mah.png" aling="center" width="500" height="350">


        
    </body>
</html>


school.html

<html>
    <head>
        <title>CK Public School</title>
    </head>
    <body bgcolor="magenta">
        <h1 align = "center">Welcome CK Public School</h1>
       <h2>
        GB Public School is a vibrant and inclusive educational institution dedicated to fostering academic excellence, personal growth, and social responsibility in its students. Situated in a welcoming community, our school provides a nurturing environment where students from diverse backgrounds come together to learn, explore, and thrive.
       </h2>

<img src="ck.png" align ="center" width="500" height="350">

        
    </body>
</html>

shrine 

<html>
    <head>
        <title>GREAT CHURCH</title>
    </head>
    <body bgcolor="blue">
        <h1 align = "center">Welcome TO GREAT CHURCH</h1>
        <h2>
            estled amidst serene surroundings, [Shrine Name] stands as a symbol of reverence and spiritual devotion, inviting pilgrims and visitors alike to experience a profound sense of tranquility and connection. This sacred sanctuary, steeped in history and tradition, serves as a beacon of faith and a place of solace for all who seek spiritual fulfillment and inner peace.
        </h2>
       
<img src="chu.png" aling="center" width="500" height="350">


        
    </body>
</html>

temple.html

<html>
    <head>
        <title>PADALAESHWAR Temple</title>
    </head>
    <body bgcolor="red">
        <h1 align = "center">Welcome PADALAESHWAR Temple</h1>
       <h2>
        Welcome to Om SPADALAESHWAR Temple, a place of profound spirituality, architectural splendor, and cultural significance. Nestled amidst tranquil surroundings, this sacred sanctuary serves as a haven for devotees and visitors seeking solace, enlightenment, and a deeper connection to the divine.
       </h2>
       
<img src="tem.png" aling="center" width="500" height="350">


        
    </body>
</html>
```


## OUTPUT

![alt text](<Screenshot (91).png>)
![alt text](<Screenshot (92).png>)
![alt text](<Screenshot (93).png>)
![alt text](<Screenshot (94).png>)
![alt text](<Screenshot (95).png>)
![alt text](<Screenshot (96).png>)

## RESULT
The program for implementing image maps using HTML is executed successfully.
