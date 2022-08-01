# frozen_string_literal: true

module ApplicationHelper
  APP_NAME = 'Rails Sample'

  def page_title
    base_title = APP_NAME
    return base_title if @title.blank?

    "#{base_title} | #{@title}"
  end
end
