class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect_to experiments_path, event: :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end



 def google_oauth2
      # You need to implement the method below in your model (e.g. app/models/user.rb)
      @user = User.from_omniauth(request.env['omniauth.auth'])

      if @user.persisted?
        flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
        sign_in_and_redirect @user, event: :authentication
      else
        session['devise.google_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
        redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
      end
  end




  before do
    OmniAuth.config.test_mode = true

    OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new({
      provider: provider,
      uid: uid,
      info: {
        name: "Google User",
        email: google_email,
        first_name: "Google",
        last_name: "User",
        image: ""
      },
      credentials: {
        token: "token",
        refresh_token: "another_token",
        expires_at: 1354920555,
        expires: true
      },
      extra: {
        id_token: 1000.times.map { "string" }.join, # this huge chunk is used to test for CookieOverflow exception
        raw_info: OmniAuth::AuthHash.new(
          email: "test@example.com",
          email_verified:"true",
          kind:"plus#personOpenIdConnect",
          name:"Test Person",
        )
      }
    })
  end

  after do
    OmniAuth.config.test_mode = false
  end

  
end
