class EmailProcessor
	# require 'email_thumbnailer'
  def initialize(email)
    @email = email
  end

  def process
    # all of your code to deal with the email goes here
    page = LinkThumbnailer.generate(@email.body)
    user_identity = Identity.find_by(email: @email.from[:email])
    # user = User.find_by(email: @email.from)
    if user_identity
    	NewsItem.create!(url: @email.body, title: page.title, favicon: page.favicon, description: page.description, main_image: page.images.first.src.to_s, tag_list: @email.subject, user_id: user_identity.id)
    end
  end
end
