class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :source_app
      t.string :api_key

      t.timestamps
    end
  end
end
