class Tweet < ApplicationRecord



  before_save :ensure_content_present

  def ensure_content_present
    if text.blank? || image.blank?
    end

  end
end