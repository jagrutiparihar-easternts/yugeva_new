<?php 
$html = '';
if($_POST['purpose'] == '2'){
    $html .= '<div class="form-group"><textarea name="address" id="address" placeholder="Your Address"></textarea></div>';
    $html .= '<div class="form-group"><input name="experience" id="experience" type="text" placeholder="Your Experience"  /></div>';
    $html .= '<div class="form-group"><input name="qualification" id="qualification" type="text" placeholder="Your Qualification"  /></div>';
}

if($_POST['purpose'] == '2' || $_POST['purpose'] == '4'){
    $html .= '<div class="form-group"><input type="file" name="upload_file" id="upload_file" placeholder="Upload File"  /></div>';
}

if($_POST['purpose'] == '4'){
    $html .= '<div class="form-group"><input name="industry" id="industry" type="text" placeholder="Industry"  /></div>';
}
echo $html;
?>