class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.string :name
      t.belongs_to :dog_sitter, index: true
      t.timestamps
    end
  end
end
