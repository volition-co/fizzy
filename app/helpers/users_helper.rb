module UsersHelper
  def role_display_name(user)
    case user.role
    when "admin" then "Administrator"
    else user.role.titleize
    end
  end

  def theme_preference_options_for(identity)
    options_for_select([
      [ "Match system", "system" ],
      [ "Light", "light" ],
      [ "Dark", "dark" ]
    ], identity.theme_preference)
  end
end
