module UsersHelper
  def gravatar_for(user, size = 50 )
    hashed_email = Digest::MD5.hexdigest(user.email.strip.downcase)
    gravatar_url = "http://www.gravatar.com/avatar/#{hashed_email}.jpg?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: 'gravatar')
  end
end
