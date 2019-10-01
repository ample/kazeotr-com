var contactSelector = function() {
	$('form').submit(function(){
    var el = $(this).find('select[name=locations]');
    var target = el.val();
    $(target).parent().find('[role=tabpanel]').removeClass('active in');
    $(target).addClass('active in');
    return false;
  });
};
$(document).ready(contactSelector);
