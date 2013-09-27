module ApplicationHelper

	def bootstrapped_alerts(type)
		case type
		when :alert || :error
		"alert-danger"
		when :notice
		"alert-info"
		when :success
		"alert-success"
		else
		type.to_s
		end
	end

end
