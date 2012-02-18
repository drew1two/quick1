module ApplicationHelper
  def logo
    logo = image_tag("logo.png", alt: "Quick Score", class: "round")
    logo
  end
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Quick-Score.com"
    if page_title.empty?
      base_title
    else
      "#{page_title} @ #{base_title}"
    end
  end

  # Returns a div wrapper around the error fields so we can ammend the styling of these ugly fields.
  def error_field_div_wrapper(error_field,cssField,is_error)
    if !is_error.eql?(0)
      returnValue = content_tag(:div, error_field, class: "#{cssField}")
      returnValue 
    else
      error_field
    end
  end
end