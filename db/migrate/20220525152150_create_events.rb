class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :typpe
      t.belongs_to :comedian
      t.timestamps
    end
  end
end
