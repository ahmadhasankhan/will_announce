module AnnouncementsHelper

  def announce announcement, options = {}
    result = nil
    if announcement != nil && cookies["announcement_" + announcement.id.to_s] != "hidden"
      data_attribute = {:announcementid => announcement.id}
      if options[:format] == "bootstrap"
        text = options[:hide_message] || "x"
        div_class = options[:div_class] || "alert alert-warning"
        alert_heading = announcement.try(:heading) || options[:alert_heading] || "Warning!"
        close_content_tag = content_tag(:a, text, :class => "close", :data => :data_attribute)
        alert_content_tag = content_tag(:h4, alert_heading, :class => "alert-heading")
        result = content_tag(:div, close_content_tag + alert_content_tag + announcement.body.html_safe, :class => :div_class)
      else
        text = options[:hide_message] || "hide message"
        div_class = options[:div_class] || "info"
        close_content_tag = content_tag(:span, text, :class => "hide_announcement", :data => :data_attribute)
        result = content_tag(:div, announcement.body.html_safe + close_content_tag, :class => :div_class)
      end
    end
  end

end