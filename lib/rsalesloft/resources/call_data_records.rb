module RSalesloft::Resources
  class CallDataRecords
    class << self
      def list(query = {})
        RSalesloft::Connection.get(call_data_records_path, query)
      end

      def fetch(id)
        RSalesloft::Connection.get(call_data_records_path(id))
      end

      private 

      def call_data_records_path(id = nil)
        id ? "call_data_records/#{id}/" : "call_data_records/"
      end
    end
  end
end