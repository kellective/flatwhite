class HomeController < ApplicationController


	def index
		@latest_attempt = CoffeeAttempt.latest
	end

end
