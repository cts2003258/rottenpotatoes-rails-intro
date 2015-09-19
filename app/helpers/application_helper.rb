module ApplicationHelper
	def sortable(column, title = nil)
		title ||= column.titleize
		link_to title, {:sort => column}, {:class => "hilite"}
	end
end
