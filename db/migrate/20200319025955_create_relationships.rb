class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.string :following_id
      t.string :follower_id

      t.timestamps
    end
  end
end
