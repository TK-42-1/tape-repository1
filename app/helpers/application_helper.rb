module ApplicationHelper
  def title
      base_title = "TETCO Tape Information Repository"
      if @title.nil?
        base_title
      else
        "#{base_title} | #{@title}"
      end
    end
end
