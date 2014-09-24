module UsersHelper
  # Returns the Gravatar for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    # Temporal
    gravatar_url = "http://www.squid-cache.org/Artwork/SN.png"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
