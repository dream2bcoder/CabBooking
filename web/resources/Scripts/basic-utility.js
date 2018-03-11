/**
 * Created by SoftSuave-50 on 7/3/2017.
 */

$(document).ready(function () {
    $('.booking-stepper fieldset:not(:nth-of-type(1))').hide();
    $('.dialog-wrapper').hide();

    $('.more-filter,.view-route').click(function () {
        $('.dialog-wrapper').fadeIn(300).slideDialogUp();
    });

    $('.dialog-wrapper').click(function () {
        $('.dialog-main').animate({'margin-top': '10%'}, 200).fadeOutDialog();
    });


    $.fn.slideDialogUp = function () {
        $('.dialog-main').animate({'margin-top': '5%'}, 200);
    }
    $.fn.fadeOutDialog = function () {
        $('.dialog-wrapper').fadeOut(300);
    }

    $('.md-select').on('click', function () {
        $(this).toggleClass('active')
    })

    $('.md-select ul li').on('click', function () {
        var v = $(this).text();
        $('.md-select ul li').not($(this)).removeClass('active');
        $(this).addClass('active');
        $('.md-select label button').text(v)
    })
    $('.account-group').click(function (e) {
        e.stopPropagation();
        $('.md-profile-menu').addClass("open");
    })

    $(document).click(function (e) {
        $('.md-profile-menu').removeClass("open");
    })
    $('.detail-more').click(function () {
        $('.detailed-bill-row').addClass('expanded');
        $('.detail-more').hide();
        $('.detail-less').show();
    })
    $('.detail-less').click(function () {
        $('.detailed-bill-row').removeClass('expanded');
        $('.detail-less').hide();
        $('.detail-more').show();
    })
    
    $('.filter-badge').click(function(){
    $('.filter-tag-section').toggleClass('expanded');
  })

  //check number of tags in filter tag
  refreshFilterChip();
  //delete chip
  $(document).on('click','.mdl-chip__action',function(){
    $(this).parents('.filter-tags').remove();
    refreshFilterChip();
  });
});
function refreshFilterChip(){
  var tagNo = $('.filter-tag-section').find('.filter-tags').length;
  if(tagNo > 0){
    $('.empty-msg').hide();
  }else{
    $('.empty-msg').show();
  }
}
function clearAllFilter(){
  $('.filter-tags').remove();
  refreshFilterChip();
}
function swapLocation() {

    var pLoc = $('#origin-input').val();
    var dLoc = $('#destination-input').val();

    if (pLoc != "" || dLoc != "") {
        var temp = pLoc;
        pLoc = dLoc;
        dLoc = temp;
        $('#origin-input').val(pLoc);
        $('#destination-input').val(dLoc);
    }

}

function goToNext(obj) {
    $(obj).parents("fieldset").hide().next().fadeIn(500);
    $('.stepper p.active').removeClass().next().addClass('active');
    $('.stepper a.active').removeClass().next().addClass('active');
}

function goToPrev(obj) {
    $(obj).parents("fieldset").hide().prev().fadeIn(500);
    $('.stepper p.active').removeClass().prev().addClass('active');
    $('.stepper a.active').removeClass().prev().addClass('active');
}

function openPaymentModal() {
    $('.payment-gateway').fadeIn(300).slideDialogUp();
}

function getRouteInfo(){
    alert($('#routePrimary').contents().find('#directions-panel').html());
}
