class CreateAgents < ActiveRecord::Migration[5.1]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :avatar_url
      t.integer :zendesk_id

      t.timestamps
    end
  end
end
