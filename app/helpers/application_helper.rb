module ApplicationHelper
	def sortable(column, title = nil)
		title ||= column.titleize
		css_class = column == sort_column ? "hilite" : nil
		link_to title, {:sort => column}, {:class => css_class}, {id => 'column_header'}
	end
end
