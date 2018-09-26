module RSalesloft::Resources
  class Teams
    class << self
      def fetch
        RSalesloft::Connection.get("team/")
      end 
    end 
  end
end