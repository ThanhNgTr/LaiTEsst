<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Tính hình tròn</title>
    </head>
    <body>
        <table>
            <form action="" method="POST">
                <tr>
                    <td>DIỆN TÍCH và CHU VI HÌNH TRÒN</td>
                </tr>
                <tr>
                    <td>Bán kính:</td>
                    <td><input type="text" name="bk" required
                    value="<?php 
                                if(isset($_POST['reset'])!=null) 
                                {
                                    echo ""; 
                                    $_POST['bk']="";
                                }
                                if(isset($_POST['bk'])) echo $_POST['bk'];
                            ?>"/></td>
                </tr>
                <tr>
                    <td>Diện tích</td>
                    <td><input type="text" name="dt" disabled style="background-color: pink;"
                    value="<?php if(isset($_POST['bk']))
                    {
                        if(isset($_POST['reset'])!=null)
                        {
                            echo "";
                        }
                        else
                        {
                            echo $_POST['bk']*$_POST['bk']*3.14;   
                        }
                    } 
                    ?>"/></td>
                </tr>
                <tr>
                    <td>Chu vi:</td>
                    <td><input type="text" name="cv" disabled style="background-color: pink;"
                    value="<?php if(isset($_POST['bk']))
                    {
                        if(isset($_POST['reset'])!=null)
                        {
                            echo "";
                        }
                        else
                        {
                            echo $_POST['bk']*2*3.14;   
                        }
                    } 
                    ?>"/></td>
                </tr>
                <tr>
                    <td style="text-align: center;">
                        <input type="submit" name="submit" value="Tinh"/>
                        <input type="submit" name="reset" value="Clear"/>
                    </td>
                </tr>
            </form>
        </table>
    </body>
</html>