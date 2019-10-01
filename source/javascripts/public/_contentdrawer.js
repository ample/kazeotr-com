
$(document).ready(function () {
  $("button[data-role='drawerToggle']").click(function () {
    $("div[data-role='show']").toggleClass('hidden');
  });
});
