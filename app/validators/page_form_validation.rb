class PageFormValidator < ActiveModel::Validator

  def validate(page)
    unless page.sequence_id >= 1
      page.errors[:sequence_id] << 'must be greater than 0.'
    end
  end
end