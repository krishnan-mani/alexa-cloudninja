require_relative '../fetch_whats_new'

require 'byebug'

RSpec.describe FetchWhatsNew do

  it "gets a title for the AWS What's New page" do
    whats_new = FetchWhatsNew.new
    expect(whats_new.get_title).to eql("What's New from Amazon Web Services")
  end

  it "gets a new item description from the AWS What's New page" do
    whats_new = FetchWhatsNew.new
    expected_string = "Jan 29: Trend Micro Deep Security on the AWS Cloud: Quick Start Update"
    expect(whats_new.get_new_item_description).to eql(expected_string)
  end

end