require 'sinatra/base'
require 'sinatra/json'

require_relative '../lib/fetch_whats_new'

class ReadAWS < Sinatra::Base

  get '/v1.0/read_whats_new' do
    json FetchWhatsNew.new.get_new_item_description
  end

end