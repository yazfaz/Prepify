class Page < ActiveRecord::Base
  belongs_to :pageable, polymorphic: true

  belongs_to :subject
  # after_create :set_sequence_id

  def set_sequence_id(subject)
    # @subject = Subject.find(params[:subject_id])
    @subject = subject

    # if @subject.pages 
    #   @last_page = @subject.pages.order('sequence_id').last
    #   @last_page_sequence = @last_page.sequence_id
    #   @next_sequence_id = @last_page_sequence + 1
    # else
    #     @next_sequence_id = 1
    # end

    if @subject.pages.count == 1
      @next_sequence_id = 1
    else
        @last_page = @subject.pages.order('sequence_id').last
      @last_page_sequence = @last_page.sequence_id
      @next_sequence_id = @last_page_sequence + 1
    end
  end 
end


