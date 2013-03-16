module ApplicationHelper
  def sortable(column, title = nil, css_class)
    title ||= column.titleize    
    direction = column == :sort_column && :sort_direction == "asc" ? "desc" : "asc"
    link_to title, :sort => column, :direction => direction
  end
  def th_class(column)
    css_class = column == params[:sort] ? "hilite" : nil
  end

end
