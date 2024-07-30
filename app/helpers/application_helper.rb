module ApplicationHelper
    def formatted_datetime
        Time.current.strftime("%B %d, %Y %H:%M %p")
    end
end
