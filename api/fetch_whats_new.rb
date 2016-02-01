require 'mechanize'

class FetchWhatsNew

  def initialize
    @mechanize = Mechanize.new
  end

  def get_title
    url = "https://aws.amazon.com/new/"
    page = @mechanize.get(url)
    page.title
  end

  def get_new_item_description
    url = "https://aws.amazon.com/new/"
    page = @mechanize.get(url)

    longer_items = page.search('.directory-item').text.split("\n").select{|txt| txt.length > 5}
    longer_items[0].strip + ': ' + longer_items[1].strip
  end

end