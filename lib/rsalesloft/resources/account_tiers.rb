module RSalesloft::Resources
  class AccountTiers
    class << self
      def list(query = {})
        RSalesloft::Connection.get(account_tiers_path, query)
      end

      def fetch(id)
        RSalesloft::Connection.get(account_tiers_path(id))
      end

      private 

      def account_tiers_path(id = nil)
        id ? "accounts/#{id}/" : "account_tiers/"
      end
    end
  end
end
