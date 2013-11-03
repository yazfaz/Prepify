$(document).on('ajax:success', function(e, data) {
  console.log('Ajax Response data:', data);
});


// $(function() {
//   $('.edit_user input[type=checkbox]').click(function(){
//   alert('clicked!');
//   });
// });

// $(function() {
//   $('edit_user<%= @user.id%> input[type=checkbox]').click(function(){
//   alert('clicked!');
//   });
// });

// $(function() {
//   $('#user_admin input[type=checkbox]').click(function(){
//   alert('clicked!');
//   });
// });