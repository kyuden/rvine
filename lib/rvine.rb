require "rvine/version"
require "rvine/client"

module Rvine
  class << self
    def new options={}
      Rvine::Client.new options
    end

    #Delegate to Rvine::Client.new
    def method_missing(method, *args, &block)
     return super unless new.respond_to?(method)
     new.send(method, *args, &block)
    end
  end
end
