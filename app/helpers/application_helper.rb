module ApplicationHelper
	def sortable(column, title = nil)
		title ||= column.titlize
		link_to title, :sort => column
	end
end
