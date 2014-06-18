<!DOCTYPE html>
<!-- saved from url=(0038)http://getbootstrap.com/examples/grid/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Attendance Tracker : Attendance Status</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/grid.css" rel="stylesheet">
  </head>

  <body>
    <div class="container">
      <h2 id="tables-bordered">Attendance Status</h2>
        <div class="bs-example">
          <table class="table table-bordered">
            <thead>
              <tr>
                <th>#</th>
                <th>Subject Code</th>
                <th>Max Classes</th>
                <th>Conducted</th>
                <th>Attended</th>
                <th>Percentage</th>
                <th>Zone</th>
              </tr>
            </thead>
            <tbody>
            <?php
              $con = mysql_connect("localhost","root","root");
              if (!$con)
                {
                die('Could not connect: ' . mysql_error());
                }

              mysql_select_db("at", $con);

              $result = mysql_query("SELECT * FROM sub1 where USN='$_POST[usn]' ");

              $num = 0;
              while($row = mysql_fetch_array($result))
              {
                $num = $num + 1;
                $a = $row['Class_conducted'];
                $b = $row['Class_attended'];
                $c = ($b/$a)*100;
                $c = number_format ($c, 2);
                $d = "";
                echo "<tr>";
                  echo "<td>$num</td>";
                  echo "<td>" . $row['Subject_code'] . "</td>";
                  echo "<td>" . $row['Max_no_of_class'] . "</td>";
                  echo "<td>" . $row['Class_conducted'] . "</td>";
                  echo "<td>" . $row['Class_attended'] . "</td>";
                  echo "<td>" . $c . "</td>";
                  if ($c>=80) echo "<td bgcolor=\"green\">" . $d . "</td>";
                  elseif ($c>=75 ) echo "<td bgcolor=\"orange\">" . $d . "</td>";
                  else echo "<td bgcolor=\"red\">" . $d . "</td>";
                  echo "</tr>";
                }
            
              mysql_close($con);
            ?>
            </tbody>
          </table>
        </div>
      </div>
    </body>
  </html>