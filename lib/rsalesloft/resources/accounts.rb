module RSalesloft::Resources
  class Accounts
    class << self
      def list(query = {})
        RSalesloft::Connection.get(accounts_path, query)
      end

      def create(options)
        RSalesloft::Connection.post(accounts_path, options)
      end

      def delete(id)
        RSalesloft::Connection.delete(accounts_path(id))
      end

      def fetch(id)
        RSalesloft::Connection.get(accounts_path(id))
      end

      def update(id, options = {})
        RSalesloft::Connection.put(accounts_path(id), options)
      end

      private 

      def accounts_path(id = nil)
        id ? "accounts/#{id}/" : "accounts/"
      end
    end
  end
end