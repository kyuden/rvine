module Rvine
  class Client
    module Users
      def me
        get "users/me"
      end

      def profile(user_id, params={})
        get "users/profiles/#{user_id}", params
      end

      def update_profile(user_id, params={})
        post "users/profiles/#{user_id}", params
      end

      def set_explicit(user_id, params={})
        post "users/#{user_id}/explicit", params
      end

      def unset_explicit(user_id, params={})
        delete "users/#{user_id}/explicit", params
      end

      def follow(user_id, params={})
        post "users/#{user_id}/followers", params
      end

      def unfollow(user_id, params={})
        delete "users/#{user_id}/followers", params
      end

      def block(user_id, block_user_id, params={})
        post "users/#{user_id}/blocked/#{block_user_id}", params
      end

      def unblock(user_id, unblock_user_id, params={})
        delete "users/#{user_id}/blocked/#{unblock_user_id}", params
      end

      def pending_notifications_count(user_id, params={})
        get "users/#{user_id}/pendingNotificationsCount", params
      end

      def notifications(user_id, params={})
        get "users/#{user_id}/notifications", params
      end

      def followers(user_id, params={})
        get "users/#{user_id}/followers", params
      end

      def following(user_id, params={})
        get "users/#{user_id}/following", params
      end

      def users(query, params={})
        get "users/search/#{query}"
      end
    end
  end
end
