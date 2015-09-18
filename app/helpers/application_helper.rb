module ApplicationHelper
	def sortable(column, title = nil)
		title ||= column.titleize
		css_class = column == sort_column
		link_to title, :sort => column, :class => css_class
	end
end
