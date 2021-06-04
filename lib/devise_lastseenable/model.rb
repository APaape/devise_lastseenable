require 'devise_lastseenable/hooks/lastseenable'

module Devise
  module Models
    module Lastseenable
      def stamp!
        if self.last_seen_at.to_i < (Time.zone.now - 5.minutes).to_i
          update_column(:last_seen_at, DateTime.now)
        end
      end
    end
  end
end
