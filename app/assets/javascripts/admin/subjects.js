$(document).on('ajax:success', function(e, data) {
  console.log('Ajax Response data:', data);
  window.e = e;

});

$(document).on('click', '.show-lesson-form', function (e) {
  e.preventDefault();
  $(e.currentTarget).hide();
  var form = $(e.currentTarget).siblings('form');
  console.log('form:', form);
  form.show();
});

