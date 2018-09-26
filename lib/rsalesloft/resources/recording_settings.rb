module RSalesloft::Resources
  class RecordingSettings
    class << self
      def fetch(id)
        RSalesloft::Connection.get("phone_numbers/recording_settings/#{id}")
      end
    end
  end
end