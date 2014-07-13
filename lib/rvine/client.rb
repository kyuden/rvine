require 'faraday_middleware'
require 'json'
require 'rvine/request'
require 'rvine/client/channels'
require 'rvine/client/posts'
require 'rvine/client/tags'
require 'rvine/client/timelines'
require 'rvine/client/users'

module Rvine
  class Client
    ROOT_URL    = 'https://api.vineapp.com/'
    LOGIN_ITEMS = [:key, :mail, :password].freeze

    attr_accessor *LOGIN_ITEMS

    def initialize(args)
      LOGIN_ITEMS.each do |item|
        send("#{item}=", args[item])
      end

      login if !key && mail && password
    end

    #endpoint
    include Rvine::Client::Channels
    include Rvine::Client::Posts
    include Rvine::Client::Tags
    include Rvine::Client::Timelines
    include Rvine::Client::Users

    private

    def login
      result = post('/users/authenticate', username: mail, password: password)
      @key   = result['key']
    end

    def logout
      delete '/users/authenticate'
    end

    include Rvine::Client::Request
  end
end
