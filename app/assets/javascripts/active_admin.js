//= require active_admin/base

$(window).load(function(){
  $('.sidebar_section.panel > h3').append('<div class="chevron"></div>');

  $('.sidebar_section.panel > h3').on('click', function(e){
    $(this).siblings('.panel_contents').toggle();
    $(this).children('div.chevron').toggleClass('expanded');
    e.preventDefault();
  });
});
