module Rvine
  class Client
    module Timelines
      def post_timeline(post_id, params={})
        get "timelines/posts/#{post_id}", params
      end

      def user_timeline(user_id, params={})
        get "timelines/posts/#{user_id}", params
      end

      def user_likes(user_id, params={})
        get "timelines/users/#{user_id}/likes", params
      end

      def tag_timeline(tag_name, params={})
        get "timelines/tags/#{tag_name}", params
      end

      def global_timeline(params={})
        get "timelines/graph", params
      end

      def popular_timeline(params={})
        get "timelines/popular", params
      end

      def ontherise_timeline(params={})
        get "timelines/trending", params
      end

      def editorpicks_timeline(params={})
        get "timelines/promoted", params
      end

      def channel_popular_timeline(channel_id, params={})
        get "timelines/channels/#{channel_id}/popular", params
      end

      def channel_recent_timeline(channel_id, params={})
        get "timelines/channels/#{channel_id}/recent", params
      end

      def venue_timeline(venue_id, params={})
        get "timelines/venues/#{venue_id}", params
      end
    end
  end
end
