module RSalesloft::Resources
  class CallSentiments
    class << self
      def list(query = {})
        RSalesloft::Connection.get("call_sentiments/", query)
      end
    end
  end
end