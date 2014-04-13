module Rvine
  class Client
    module Channels
      def featured_channels(params={})
        get "channels/featured", params
      end
    end
  end
end
