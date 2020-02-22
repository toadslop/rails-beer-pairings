require 'faraday'
require 'json'

class Connection
  BASE = 'https://sandbox-api.brewerydb.com/v2/beers/?key=f7b8393ac61802b1b3d7258515d8b32d'.freeze

  def self.api
    Faraday.new(url: BASE) do |faraday|
      faraday.response :logger
      faraday.adapter Faraday.default_adapter
      faraday.headers['Content-Type'] = 'application/json'
      faraday.headers['Brewery DB Key'] = ENV['BREWERYDB_KEY']
    end
  end
end
