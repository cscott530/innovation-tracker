class PagesController < ApplicationController
	def index
		render template: 'root'
	end
end