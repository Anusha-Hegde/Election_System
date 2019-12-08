<?php
 $dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "";
 $db = "electiondb";
 $conn = new mysqli($dbhost, $dbuser, $dbpass, $db) or die(mysqli_error);
 
 if (isset($_POST['form_submitted'])):
     $sql="INSERT INTO voter( vno, vname, age, relname, ano) VALUES ('$_POST[vno]','$_POST[vname]','$_POST[age]','$_POST[relname]','$_POST[ano]')";
     $sql2="INSERT INTO voter_table(vno, vname, pname, ano) VALUES ('$_POST[vno]','$_POST[vname]','$_POST[pname]','$_POST[ano]')";
     $no=$_POST['ano'];
 endif; 
    if (!mysqli_query($conn,$sql)&&!mysqli_query($conn, $sql2))
  {
    die('Error: ' . mysql_error());
  }
  
  $sql3=mysqli_query($conn,"SELECT cno FROM voter_table vt, candidate c,party p where vt.pname=p.pname and c.pno=p.pno and vt.ano=c.ano");
  while($row = mysqli_fetch_row($sql3))
{
 $val = $row[0];
}
  $sql4=mysqli_query($conn,"UPDATE count_table set no_of_votes=no_of_votes+1 where cno = $val ");
  
 
  //to display values
  $sql="SELECT vt.vno, vt.vname, age, relname, v.ano, pname FROM voter v, voter_table vt where vt.vno=v.vno order by vt.ano";
  $result= mysqli_query($conn,$sql);
   
   if(!$result)
  {
    die('Error: ' . mysql_error());
  }
  echo "<br/>"."<br/>"."<br/>"."<br/>";
  echo "<table align='center' border='2'>
       <tr>
       <th>Voter Number</th>
       <th>Voter Name</th>
       <th>Age</th>
       <th>Relation Name</th>
       <th>Area Number</th>
       <th>Party Voted For</th>
       </tr>";
  
  while($row=mysqli_fetch_array($result)){
    // output data of each row
    echo "<tr>";
    echo "<td>".$row['vno']."</td>";
    echo "<td>".$row['vname']."</td>";
    echo "<td>".$row['age']."</td>";
    echo "<td>".$row['relname']."</td>";
    echo "<td>".$row['ano']."</td>";
    echo "<td>".$row['pname']."</td>";
    echo "</tr>";
    }

echo "</table>";
header("Refresh:7; url=voter.html");  
mysqli_close($conn);

?>



