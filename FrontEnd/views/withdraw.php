
<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
   require './includes/header.php';

function saveImageWithText($text, $color, $source_file,$x,$y) {
//chhosing the cuurent path
  $public_file_path = '.';

  // dublicate the realimage
  list($width, $height) = getimagesize($source_file);
  $image_p = imagecreatetruecolor($width, $height);
  $image = imagecreatefromjpeg($source_file);
  imagecopyresampled($image_p, $image, 0, 0, 0, 0, $width, $height, $width, $height);

  // text size and colors
  $text_color = imagecolorallocate($image_p, 0, 0, 0);
  $bg_color = imagecolorallocate($image_p, 255, 255, 255);
  $font = $public_file_path . '/arial.ttf';
  $font_size = 12;

  // Set the text position
  $offset_x = $x;
  $offset_y = $y;
  $dims = imagettfbbox($font_size, 0, $font, $text);
  $text_width = $dims[4] - $dims[6] + $offset_x;
  $text_height = $dims[3] - $dims[5] + $offset_y;


  // Add text
  imagettftext($image_p, $font_size, 0, $offset_x, $offset_y, $text_color, $font, $text);

  // Save
  imagejpeg($image_p, $public_file_path . '/output.jpg', 100);

  // Clear
  imagedestroy($image);
  imagedestroy($image_p);
}
//prepare the photo to be printed using the function above
$user =new client();
$action=$user->Transaction_withdraw($client->getID(),$_POST['MyRadio']);
if($action){
$image_filepath = 'BankCheckRouting.jpg';
saveImageWithText($client->getName(), "red", $image_filepath,100,105);
$image_filepath = 'output.jpg';
//save pic with cases
switch ($_POST['MyRadio']) {
  case 100:
    saveImageWithText("one hundred", "red", $image_filepath,60,135);
    break;
  case 20:
    saveImageWithText("twenty", "red", $image_filepath,60,135);
    break;
    case 50:
    saveImageWithText("fifty", "red", $image_filepath,60,135);
    break;
  default:
    saveImageWithText("0", "red", $image_filepath,60,135);
    break;
}
saveImageWithText($_POST['MyRadio'], "red", $image_filepath,430,105);
//saveImageWithText("five hundred", "red", $image_filepath,60,135);
saveImageWithText(date('d/m/y'), "red", $image_filepath,350,70);
saveImageWithText($client->getName(), "red", $image_filepath,60,210);
//echo'<a href="/output.jpg" download>';
//alerts
$_SESSION['withdraw_sucess']='<p class="signupsuccess"> withdraw opreation sucessfully checkout your coins Now and the check in the downloaded items</P>';
                    header("Location: payment.php");
                    exit();
}
else{
  $_SESSION['withdraw_falied']='<p class="signuperror"> withdraw opreation falied checkout your coins or the internet connection</P>';
                    header("Location: payment.php");
                    exit();

}
}?>

<script type="text/javascript">
//for download
    $(document).ready(function () {
        $("a").click();
    });
</script>
