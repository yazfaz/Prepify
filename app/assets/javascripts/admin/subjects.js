$(document).on('ajax:success', function(e, data) {
  console.log('Ajax Response data:', data);
  window.e = e;
  // var subject = $(e.target);
  // if (e.target.id) == "new_math_lesson") {
  // $(e.target.id).hide().after('<%= j render partial: 'new_math_form', locals: {subject: @subject} %>');
  // $('#new_reading_lesson').show();
});

$(document).on('click', '.show-lesson-form', function (e) {
  e.preventDefault();
  var form = $(e.currentTarget).siblings('form');
  console.log('form:', form);
  form.show();
});

// var subjectinit = {

//   subjects: function(){
//     alert('sss');
//   $('#new_math_lesson').click(function(e){
//     window.e = e;
//     $(e.target).hide().after("<%= j render partial: 'new_math_form', locals: {subject: @subject} %>");
  
//     // (e.target).parentElement.show("<%= raw render partial: 'new_math_form', locals: {subject: @subject} %>");
    

//   });
//   // $('#new_reading_lesson').hide().after('<%= j render partial: 'new_reading_form', locals: {subject: @subject} %>');
//   // $('#new_writing_lesson').hide().after('<%= j render partial: 'new_writing_form', locals: {subject: @subject} %>');
//   }
// }
