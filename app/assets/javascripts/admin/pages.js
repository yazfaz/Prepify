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
        url:'/admin/subjects/4/pages/sort',
        type:'post',
        data: $('#sortable-pages').sortable('serialize'),
        dataType: 'script',
        complete: function(request){
          $('#sortable-pages').effect('highlight');
         
          // $('table').html(response)
        }
      });
      // $( "#sortable-pages" ).sortable( "refresh" );
      $('#sortable-pages tr').each(function(i){
        $(this).children('td:first-child').html(i+1);
      });
    }
  });
});