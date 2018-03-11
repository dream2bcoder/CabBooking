/**
 * Created by SoftSuave-50 on 7/6/2017.
 */
$(document).ready(function(){




});



function  validateLoginForm(){

  var isFormValid = true;
  $('.required').each(function(){
     
        if($(this).val() === ""){
          isFormValid = false;
          //$(this).parent().siblings('span').css({'display':'block'});
          showError($(this));
        }else if($(this).hasClass('email')){
            if(!validEmail($(this))){
                isFormValid = false;
                showError($(this));
            }
        }
  });
  
  if(isFormValid)
      return true;
  else
      return false;
}

function  validEmail(obj){
  var x = $(obj).val();
  var atpos = x.indexOf("@");
  var dotpos = x.lastIndexOf(".");
  if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
    // $(obj).css({ 'border-bottom': '1px solid #f54e4e' });
    return false;
  } else {
    // $(obj).css({ 'border-bottom': '1px solid #7d7d7d' });
    return true;
  }
}
function showError(obj){
  $(obj).css({'border-bottom':'2px solid #BD4548'});
  $(obj).parent().siblings('span').show();
  $(obj).siblings('label').css('color','#BD4548');

}

function resetError(obj){
    
     $(obj).css({'border-bottom':'2px solid #448aff'});
     $(obj).siblings('label').css('color','#448aff');
     $(obj).parent().siblings('span').hide();
    
}