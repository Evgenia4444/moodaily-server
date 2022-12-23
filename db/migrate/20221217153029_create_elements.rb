class CreateElements < ActiveRecord::Migration[7.0]
  def change
    create_table :elements do |t|
      t.string :name
      t.string :imageLink
      t.string :string

      t.timestamps
    end
  end
end
