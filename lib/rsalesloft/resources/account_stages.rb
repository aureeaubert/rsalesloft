module RSalesloft::Resources
  class AccountStages
    class << self
      def list(query = {})
        RSalesloft::Connection.get(account_stages_path, query)
      end

      private 

      def account_stages_path(id = nil)
        id ? "accounts/#{id}/" : "account_stages/"
      end
    end
  end
end
