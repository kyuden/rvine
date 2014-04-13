module Rvine
  class Client
    module Posts
      def like(post_id, prams={})
        post "posts/#{post_id}/likes", params
      end

      def unlike(post_id, prams={})
        delete "posts/#{post_id}/likes", params
      end

      def comment(post_id, prams={})
        post "posts/#{post_id}/comments", params
      end

      def uncomment(post_id, comment_id, prams={})
        delete "posts/#{post_id}/comments/#{comment_id}", params
      end

      def revine(post_id, prams={})
        post "posts/#{post_id}/repost", params
      end

      def unrevine(post_id, revine_id, prams={})
        delete "posts/#{post_id}/repost/#{revine_id}", params
      end

      def report(post_id, prams={})
        post "posts/#{post_id}/complaints", params
      end

      def post(prams={})
        post "posts", params
      end

      def delete_post(post_id, prams={})
        delete "posts/#{post_id}", params
      end
    end
  end
end
