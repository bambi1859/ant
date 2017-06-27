class CreateImgs < ActiveRecord::Migration
  def change
    create_table :imgs do |t|
      t.integer :post_id
      t.string :img_url
      t.string :flag ,default: "0" # 0 => 일반 , 1=>final
      t.timestamps null: false
    end
  end
end
