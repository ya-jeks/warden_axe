module WardenAxe
  class SessionChopper

    def initialize(session_scope, user_id)
      @user_scope = "warden.user.#{session_scope}.key"
      @user_id = user_id
    end

    def chopoff!
      sessions_for(@user_id).map{|key| Redis.current.del key}
    end

    private
      def sessions_for(usr_id)
        Redis.current.keys.map{|key| key if user_id_in_session(key) == usr_id}
      end

      def user_id_in_session(session_key)
        Marshal.load(Redis.current.get session_key)[@user_scope]
      end

  end
end