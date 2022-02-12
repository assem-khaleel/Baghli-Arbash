<?php if ($extensions) { ?>

<?php foreach ($extensions as $extension) {
?>
    <div class="tips-area-cvr clearfix updatetips">
    <div class="container">
    	<div class="col-md-6">
        	<h6>TIPS & <strong>ADVICES</strong></h6>
            <h5>A headline about the tips and advices section will be here.</h5>
            <div id="example">
            <ul >
            	
 
<?php
foreach($extension['modules'] as $module)
{
  
$tips_json_array=json_decode($module['setting']);

foreach($tips_json_array->module_description as $key=>$tips_settings)
{
 if($key==$extension['lang_id'])
    
echo '<li>'.$tips_settings->title.'</li>';
}



}


 
?>
                
                </ul>

            </div>
             <a href="<?php echo $view_all_href;?>" class="btn btn-default">View All</a>
        </div>

        
    </div>
    </div>
<?php
}
}

?>