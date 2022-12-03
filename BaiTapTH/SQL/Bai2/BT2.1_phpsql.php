
    <style>
        table{
            border-collapse: collapse;
            overflow: auto;
        }
        table th{
            background-color: #e44e81;
        }
        table tr:nth-child(odd){
            background-color: #ffffff;
        }
        table tr:nth-child(even){
            background-color: #d3d8e3;
        }
    </style>


<?php

include './include/conn.php';

$strSQL='SELECT *  FROM hang_sua ';
$result = mysqli_query($conn, $strSQL);

if (mysqli_num_rows($result)<>0)
{
    echo "<h2 align='center''>THONG TIN HANG SUA</h2>";
    echo "<table border='1' STYLE='width: 1OO%'>";
    echo "<tr> 
            <td>Ma HS</td>
            <td>Ten Hang</td>
            <td>Dia chi</td>
            <td>So dien thoai</td>
            <td>Email</td>
       </tr> ";
    while ($row = mysqli_fetch_array($result))
    {
        echo "<tr>";
        for($i=0;$i<mysqli_num_fields($result);$i++)
        {
            echo "<td>".$row[$i]."</td>";
        }
        echo "</tr>";
    }
    echo "</table>";
}


?>


<?php mysqli_close($conn) ?>

