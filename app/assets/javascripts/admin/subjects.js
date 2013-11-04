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

$(document).on('click', '.change-published-status', function (e) {
  alert('hi');
  e.preventDefault();
  // $(e.currentTarget).hide();
  var form = $(e.currentTarget).closest('form');
  console.log('form:', form);
  form.submit();
});
// var subjinit = {
//   publish: function(){
//     $(document).on('click', '.change-published-status', function(e){
//       e.preventDefault();
//     // if ($(e.currentTarget).find('#user_admin').prop('true')){
//   //   alert('true');
//       $(e.currentTarget).parent().find('form').submit();
//       $(e.currentTarget).hide();

//   // }
//   // else {
//   //   alert('false');
//   //   $(e.currentTarget).parent().find('form').submit();
//   // }

//     });
//   }
// }


