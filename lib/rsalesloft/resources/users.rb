module RSalesloft::Resources
  class Users
    class << self
      def list(query = {})
        RSalesloft::Connection.get(users_path, query)
      end

      def fetch(id = nil)
        if id.present?
          RSalesloft::Connection.get(users_path(id))
        else
          RSalesloft::Connection.get("me/")
        end
      end

      private

      def users_path(id = nil)
        id ? "users/#{id}/" : "users/"
      end
    end
  end
end