class AddDisplayToLogements < ActiveRecord::Migration[5.0]
  def change
    add_column :logements, :display, :boolean
  end
end
