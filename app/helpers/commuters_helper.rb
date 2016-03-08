module CommutersHelper
  # Returns the Gravatar for the given user.
  def gravatar_for(commuter, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(commuter.email.downcase)
    size = options[:size]
    gravatar_url = "/assets/default_pic.png"
    image_tag(gravatar_url, alt: commuter.name, class: "gravatar")
  end
end
