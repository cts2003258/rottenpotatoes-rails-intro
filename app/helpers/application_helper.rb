module ApplicationHelper
	def sort_by(name)
		if name == "title"
			session[:sort] = "title"
			link_to "Title", movies_path(sort: "title", ratings: params[:ratings])
		elsif name == "release_date"
			session[:sort] = "release_date"
			link_to "Release Date", movies_path(sort: "release_date", ratings: params[:ratings])
		else
			session[:sort] = nil
		end
	end

	def rating_selected?(rating)
		return (params.has_key? :ratings) && (params[:ratings] != nil) && (params[:ratings].include?(rating))
	end

	def back
		if ((session[:ratings] != nil) && ((session.has_key? :sort) && (session[:sort] != nil)))
			link_to 'Back to movie list', movies_path(sort: session[:sort], ratings: session[:ratings])
		elsif (session[:ratings] != nil)
			link_to 'Back to movie list', movies_path(ratings: session[:ratings])
		elsif((session.has_key? :sort) || (session[:sort] != nil))
			link_to 'Back to movie list', movies_path(sort: session[:sort])
		else
			link_to 'Back to movie list', movies_path
		end
	end

	def refresh
		submit_tag 'Refresh'
	end
end
