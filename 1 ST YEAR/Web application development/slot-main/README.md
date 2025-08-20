# Ex03 Time Table
## Date:
18.03.2024

## AIM
To write a html webpage page to display your slot timetable.

## ALGORITHM
### STEP 1
Create a Django-admin Interface.

### STEP 2
Create a static folder and inert HTML code.

### STEP 3
Create a simple table using ```<table>``` tag in html.

### STEP 4
Add header row using ```<th>``` tag.

### STEP 5
Add your timetable using ```<td>``` tag.

### STEP 6
Execute the program using runserver command.

## PROGRAM
```
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Timetable</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid rgb(185, 232, 16);
            text-align: left;
            padding: 8px;
        }
        th {
            background-color:rgb(0, 136, 255);
        }
    </style>
</head>
<body>
<centre>
    <img src="logo.png" height="100" width="540">
</centre>

<h2>Timetable  A.BALAJI  [ 212223040023 ]</h2>

<table>
  <tr>
    <th>Day</th>
    <th>8:00 - 10:00</th>
    <th>10:00 - 12:00</th>
    <th>12:00 - 1:00</th>
    <th>1:00 - 3:00</th>
    <th>3:00 - 5:00</th>
  
  </tr>
  <tr>
    <b><td>Monday</td></b>
    <td>PHYSICS</td>
    <td>SOFTWARE ENG</td>
    <td>Lunch</td>
    <td>BEE</td>
    <td>FREE</td>

  </tr>
  <tr>
    <td>Tuesday</td>
    <td>ETHICAL HACKING</td>
    <td>PYTHON</td>
    <td>LUNCH</td>
    <td>WEB</td>
    <td>FREE</td>

  </tr>
  <tr>
    <td>Wednesday</td>
    <td>BEEE</td>
    <td>SOFTWARE</td>
    <td>LUNCH</td>
    <td>PYTHON</td>
    <td>FREE</td>

  </tr>
  <tr>
    <td>Thursday</td>
    <td>PHYSICS</td>
    <td>MATHS</td>
    <td>LUNCH</td>
    <td>WEB</td>
    <td>FREE</td>

  </tr>
  <tr>
    <td>Friday</td>
    <td>WEB</td>
    <td>CREATIVE SKILL</td>
    <td>LUNCH</td>
    <td>FREE</td>
    <td>FREE</td>

  </tr>
  <tr>
    <td>Saturday</td>
    <td>MATHS</td>
    <td>FREE</td>
    <td>LUNCH</td>
    <td>ETHICAL HACKING</td>
    <td>FREE</td>
  </tr>
</table>
<br>
<table align="center" cellspacing="2" cellpadding="4" border="2">
    <tr align="center">
    <th>S. No.</th>
    <th>Subject Code</th>
    <th>Subject Name</th>
   
    </tr>
    <tr>
    <td align="center">1.</td>
    <td align="center">19AI414</td>
    <td>Fundamentals of Web Application Development</td>
    </tr>
    <tr>
    <td align="center">2.</td>
    <td align="center">19AI301</td>
    <td>PYTHON</td>
    </tr>
    <tr>
    <td align="center">3.</td>
    <td align="center">19CS408</td>
    <td>SOFTWARE ENG</td>
    </tr>
    <tr>
    <td align="center">4.</td>
    <td align="center">19CS417</td>
    <td>ETHICAL HACKING</td>
    </tr>
    <tr>
    <td align="center">5.</td>
    <td align="center"> 19MA222</td>
    <td>Probability And Queueing Models</td>
    </tr>
    <tr>
    <td align="center">6.</td>
    <td align="center">19EE305</td>
    <td>BEEE</td>
    </tr>
    <tr>
    <td align="center">7.</td>
    <td align="center">19EY702</td>
    <td>CREATIVE SKILL</td>
    </tr>
    </table>
    
<table>

</table>

</body>
</html>
```

## OUTPUT
![alt text](<Screenshot (103).png>)

## RESULT
The program for creating slot timetable using basic HTML tags is executed successfully.
