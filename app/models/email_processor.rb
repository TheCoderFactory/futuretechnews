class EmailProcessor
	# require 'email_thumbnailer'
  def initialize(email)
    @email = email
  end

  def process
    # all of your code to deal with the email goes here
    page = LinkThumbnailer.generate(@email.body)
    NewsItem.create!(title: page.title, favicon: page.favicon, description: page.description, main_image: page.images.first.src.to_s)
  end
end
