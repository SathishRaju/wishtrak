class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.text :content

      t.timestamps
    end
  end
end
