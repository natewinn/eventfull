module ApplicationHelper
	
	def full_title(page_title)
		base_title = "Remember"
		page_title.empty? ?  base_title : "#{base_title} | #{page_title}"
	end

  def format_date(date)
    if date != nil
    	date.strftime("%B %d, %Y")
    end
  end

end