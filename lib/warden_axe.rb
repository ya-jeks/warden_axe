require "redis-rails"
require "warden_axe/version"
require "warden_axe/session_chopper"

module WardenAxe

  def self.chopoff_sessions!(session_scope, user_id)
    SessionChopper.new(session_scope, user_id).chopoff!
  end

end
