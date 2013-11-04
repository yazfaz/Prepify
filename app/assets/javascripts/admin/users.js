var init = {
  users: function(){
    $('.edit_user input[type=submit]').remove();
    $('.edit_user input[type=checkbox]').click(function(){
      $('.edit_user').parent().find('form').submit();
    });

    $(document).on('ajax:success', function(e, data) {
      console.log('Ajax Response data:', data);
      window.e = e;
      var user = $(e.target).parent().parent();
      if ($(e.target).find('#user_admin').prop('checked')){
        $('#admin-user-table').append(user);
      }
      else {
        $('#student-user-table').append(user);
      }
    });
  }
}

