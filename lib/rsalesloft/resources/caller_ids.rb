module RSalesloft::Resources
  class CallerIds
    class << self
      def list(query = {})
        RSalesloft::Connection.get("phone_numbers/caller_ids/", query)
      end
    end
  end
end