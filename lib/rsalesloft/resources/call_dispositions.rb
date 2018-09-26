module RSalesloft::Resources
  class CallDispositions
    class << self
      def list(query = {})
        RSalesloft::Connection.get("call_dispositions/", query)
      end
    end
  end
end