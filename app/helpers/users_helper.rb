module UsersHelper

	#Return the Gravatar (http://gravatar.com/) for given user
	def gravatar_for user #, options={}
#		options = DEFAULT_OPTIONS.merge options
#		options[:size] = "%{size}x%{size}" % options
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, alt: user.name, class:"gravatar")
	end
end
