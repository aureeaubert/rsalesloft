module RSalesloft::Resources
  class Tags
    class << self
      def list(query = {})
        RSalesloft::Connection.get("tags/", query)
      end
    end
  end
end