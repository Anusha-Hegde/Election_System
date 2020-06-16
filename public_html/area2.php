<?php
$dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "";
 $db = "elec";
 $conn = new mysqli($dbhost, $dbuser, $dbpass, $db) or die(mysqli_error);
 ?>
<html>
    <head>
        <title>Constituency</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="index_effects.css">
        <link rel="stylesheet" type="text/css" href="about_effects.css">
        <link rel="stylesheet" type="text/css" href="contact_effects.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
        <style>
            body { background-image: url("vote3.jpg");}
        </style>
    </head>
    <body>
        <div class="header">
            <a class="logo">ELECTION COMMISSION</a>
            <div class="header-right">
                <a href="index.html">Home</a>
                <a href="about.html">About</a>
                <a href="contacts_front.html">Contact</a>
            </div>
        </div>
        <div class="navbar">
            <div class="subnav">
                <button class="subnavbtn">Party</button>
                <div class="subnav-content">
                    <a href="party_entry.html">New</a>
                    <a href="party2.php">Display</a>
                </div>
            </div> 
            <div class="subnav">
                <button class="subnavbtn">Constituencies</button>
                <div class="subnav-content">
                    <a href="area_entry.html">New</a>
                    <a href="area2.php">Display</a>
                </div>
            </div> 
            <div class="subnav">
                <button class="subnavbtn">Candidates</button>
                <div class="subnav-content">
                    <a href="candi_entry.html">New</a>
                    <a href="candi2.php">Display</a>
                </div>
            </div>
            <div class="subnav">
                <a href="voter.html">Vote Now</a>
            </div>
            <div class="subnav">
                <button class="subnavbtn">Results</button>
                <div class="subnav-content">
                    <a href="results.php">Show Results</a>
                </div>
            </div>            
        </div>
        <br/><br/>
        <br/><br/>
        
        <div align="center">
        <div class="container">
            <h1 align="center">The Constituency Details...</h1>
            <?php
           
  //to display values
  $sql="SELECT * FROM constituency order by ano";
  $result= mysqli_query($conn,$sql);
   
   if(!$result)
  {
    die('Error: ' . mysql_error());
  }
  echo "<br/>"."<br/>"."<br/>"."<br/>";
  echo "<table align='center' border='2'>
       <tr>
       <th>Area Number</th>
       <th>Area Name</th>
       <th>District</th>
       <th>State</th>
       </tr>";
  
  while($row=mysqli_fetch_array($result)){
    // output data of each row
    echo "<tr>";
    echo "<td>".$row['ano']."</td>";
    echo "<td>".$row['aname']."</td>";
    echo "<td>".$row['district']."</td>";
    echo "<td>".$row['state']."</td>";
    echo "</tr>";
    }

echo "</table>";
mysqli_close($conn);
?>
    </div>
        </div>
        </body>
        </html>
