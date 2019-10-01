var jPM = $.jPanelMenu({
    menu: '#navbar',
    trigger: '.navbar-toggle-menu'
});

jPM.on();


var nav_active = function () {
  $('.navbar-nav a').click(function () {
    $('.navbar-nav a').removeClass('active');
    $(this).addClass('active');
  });
};

$(document).ready(nav_active);
