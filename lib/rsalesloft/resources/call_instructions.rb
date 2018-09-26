module RSalesloft::Resources
  class CallInstructions
    class << self
      def list(query = {})
        RSalesloft::Connection.get(call_instructions_path, query)
      end

      def fetch(id)
        RSalesloft::Connection.get(call_instructions_path(id))
      end

      private 

      def call_instructions_path(id = nil)
        id ? "action_details/call_instructions/#{id}/" : "action_details/call_instructions/"
      end
    end
  end
end