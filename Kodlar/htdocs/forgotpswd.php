<!--Sifre yenileme sayfasi-->
<?php
    session_start();
    include "connect.php";
    if(isset($_POST['submit'])) 
    {
        $email_id = $_POST['email'];
        $result = mysqli_query($conn,"SELECT * FROM uyeler where eposta='". $email_id."'");
        $row = mysqli_fetch_assoc($result);
        $fetch_email_id=$row['eposta'];
        $password = $row['sifree'];
        $tam_ad = $row['tam_ad'];
        
        if($email_id == $fetch_email_id) 
        {
            $message='Sifreniz: '.$password.'';
        
            require "PHPMailer-master/class.phpmailer.php";		// phpmailder dosyamızı çağırıyoruz
            
            $mail = new PHPMailer();  
            
            // SMTP Ayarları
            $mail->CharSet = 'UTF-8';
            $mail->IsSMTP();                
            $mail->SMTPAuth = true;         
            $mail->SMTPSecure = "ssl";      
            $mail->Host = "smtp.gmail.com";	// Gmail SMTP sunucu adresi
            $mail->Port = 465;				
            $mail->Encoding = '7bit';
            
            $mail->Username   = "YolAcik00@gmail.com";
            $mail->Password   = "hays_1234";					

            $mail->SetFrom('YolAcik00@gmail.com', 'YolAcik');
            //$mail->AddReplyTo($_POST['eposta'], $_POST['isim']);
            $mail->Subject = "SİFREM NE";
            $mail->MsgHTML($message);
        
            // Gönder
            $mail->AddAddress(".$email_id.", ".$tam_ad.");
            $result2 = $mail->Send();
            $message = $result2 ? '<div class="alert alert-success" role="alert"><strong>Başarılı! </strong>Mesajınız gönderildi!</div>' : 
            '<div class="alert alert-danger" role="alert"><strong>Hata! </strong>Mesaj gönderilirken bir sorun oluştu.</div>';  
        
            unset($mail);
        }
    }
?>

<!DOCTYPE html> 
<html>
<head>
        

        <link rel="stylesheet" type="text/css" href="css/forgotpswd.css">

        <script src="https://kit.fontawesome.com/5e0f0316e6.js" 
        crossorigin="anonymous"></script>

        <link rel="preconnect" href="https://fonts.gstatic.com">

        <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@1,300&display=swap"
        rel="stylesheet">    
           
        <title>Şifre Yenileme</title>
</head>
    <body>
        <section id="menu">           
            <div id="logo"></div>
            <nav> 
                <a href="index.php"><i class="fas fa-home ikon"></i>Anasayfa</a>
            </nav>
        </section>

        <section id="forgot"> 
            <div class="container">
                <h2>Şifre Yenileme</h2>
                   
                <form method="POST">
                    <div class="group">
                        <h4>Kullanıcı adınızı ya da e-posta adresini giriniz</h4>
                        <input type="text" name="email" required>
                        <br>                        
                    </div>

                    <div class="submit">
                        <input type="submit" name="submit" value="Gönder"
                        style="background-color:#6495ED">                    
                    </div>  
                </form>                    
            </div>              
        </section>
    </body>
</html>