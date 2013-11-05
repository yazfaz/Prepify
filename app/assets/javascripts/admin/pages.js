$(document).ready(function(){


  $('#sortable-pages').sortable({
    axis: 'y',
    dropOnEmpty: false,
    // handle: '.handle',
    cursor: 'move',
    items: 'tr',
    opacity: 0.4,
    scroll: true,
    update: function(){
      $.ajax({
        url: $('#sortable-pages').data('sort-url'),
        type:'post',
        data: $('#sortable-pages').sortable('serialize'),
        dataType: 'script',
        complete: function(request){
          $('#sortable-pages').effect('highlight');
        }
      });
      // Update sequence-id column in table upon moving to be index + 1 (same logic as sort method that sets sequence if)
      $('#sortable-pages tr').each(function(i){
        $(this).children('td:first-child').html(i+1);
      });
    }
  });
});


$(document).on('click', '.show-edit-title-form', function (e) {
  e.preventDefault();
  $(e.currentTarget).hide();
  var form = $(e.currentTarget).siblings('form');
  console.log('form:', form);
  form.show();
});


// $(document).on('click', '.change-title', function (e) {
//   e.preventDefault();
//   var form = $(e.currentTarget).parent().find('form');
//   console.log('form:', form);
//   form.submit();
// });