class IdentitiesController < ApplicationController
  def update
    Current.user.identity.update!(identity_params)
    redirect_back fallback_location: root_path, notice: "Theme preference updated"
  end

  private
    def identity_params
      params.expect(identity: :theme_preference)
    end
end
