require "spec_helper"
OmniAuth.config.test_mode = true
# OmniAuth.config.on_failure = Proc.new { |env|
#   OmniAuth::FailureEndpoint.new(env).redirect_to_failure
# }

def set_valid_omniauth
  OmniAuth.config.add_mock(:facebook, mock_fb_oauth_response)
end

def set_invalid_omniauth
  OmniAuth.config.mock_auth[:facebook] = :invalid_credentials
  false
end

def mock_fb_oauth_response
  OmniAuth::AuthHash.new(
    {
        :provider => "facebook",
        :uid => "1234567",
        :info => {
          :email => "oakeem@shot.ly",
          :name => "user mock",
          :first_name => "User",
          :last_name => "Mock",
          :image => "http://graph.facebook.com/1234567/picture?type=square",
          :urls => { :Facebook => "http://www.facebook.com/umock" },
          :location => "Yaba Lagos",
          :verified => true
        },
        :credentials => {
          :token => "SYQ3KB27P2...",
          :expires_at => 3451747305,
          :expires => true
        },
        :extra => {
          :raw_info => {
            :id => "1234567",
            :name => "User mocks",
            :first_name => "User",
            :last_name => "Mocks",
            :link => "http://www.facebook.com/umock",
            :username => "umocks",
            :location => { :id => "123456789", :name => "Yaba Lagos" },
            :gender => "male",
            :email => "oakeem@shot.ly",
            :timezone => 0,
            :locale => "en_Uk",
            :verified => true,
            :updated_time => "2011-11-11T06:21:03+0000"
          }
        }
  }
)
end
