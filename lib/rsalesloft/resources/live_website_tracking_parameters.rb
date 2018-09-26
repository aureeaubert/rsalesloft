module RSalesloft::Resources
  class LiveWebsiteTrackingParameters
    class << self
      def create(options)
        RSalesloft::Connection.post("live_website_tracking_parameters/", options)
      end
    end
  end
end