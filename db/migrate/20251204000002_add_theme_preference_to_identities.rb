class AddThemePreferenceToIdentities < ActiveRecord::Migration[8.0]
  def change
    add_column :identities, :theme_preference, :integer, default: 0, null: false
  end
end
