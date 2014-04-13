module Rvine
  class Client
    module Tags
      def trending_tags(prams={})
        get "tags/trending", prams
      end

      def tags(tag_name, prams={})
        get "tags/search/#{tag_name}", prams
      end
    end
  end
end
