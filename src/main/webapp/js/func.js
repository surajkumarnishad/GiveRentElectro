

$(document).ready(function(){
	
	
    $('header>section>input').focusin(function(){
        $(this).css({boxShadow:"0 0 10px 5px white"});
    });
    
    $('header>section>input').focusout(function(){
        $(this).css({boxShadow:"none"});
    });
    
    $('#login').click(function(){
        $('#loger').show(); 
    });
    
    $('#logmain span').click(function(){
        $('#loger').fadeOut();
    });
    
	$('#logmain>.log:first-child a').click(function(){
        $('.log:last-child').show();
        $('.log:first-child').hide();
    });
    
    $('#logmain>.log:last-child a').click(function(){
        $('.log:first-child').show();
        $('.log:last-child').hide();
    });

    $('header>section:first-child>section:last-child i').click(function(){
        $('header>section:first-child>section:last-child ul').slideToggle();
    });
    
    $('header>section:first-child>section:last-child ul').mouseleave(function(){
        $(this).slideUp();
    });
    
    $('header>section:first-child>section:last-child ul li').click(function(){
      var city =$(this).text();
      document.getElementById('city').innerText=city;  
    });
   
});

function formValidation(){
	
	return true;
}


