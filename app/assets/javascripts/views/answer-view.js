(function () {

  window.AnswerView = Backbone.View.extend({
    className: 'row answer',
    template: _.getTemplate('answer'),
    render: function () {
      var newAnswerHtml = this.template( this.model.toJSON() );
      $(this.el).html(newAnswerHtml);
    },
    
    events: {
    	"click" : "delete_comment"
    },

    delete_comment: function(e){
    	$(this.el).remove();
    	this.model.destroy();
    }
  });

})();
