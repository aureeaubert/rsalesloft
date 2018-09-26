module RSalesloft::Resources
  class Actions
    class << self
      def list(query = {})
        RSalesloft::Connection.get(actions_path, query)
      end

      def fetch(id)
        RSalesloft::Connection.get(actions_path(id))
      end

      private 

      def actions_path(id = nil)
        id ? "actions/#{id}/" : "actions/"
      end
    end
  end
end