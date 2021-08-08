class CreateAlligators < ActiveRecord::Migration[5.2]
  def change
    create_table :alligators do |t|
      t.string :name

      t.timestamps
    end
  end
end
