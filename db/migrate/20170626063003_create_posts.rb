class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :userid
      t.string :email
      t.string :phone
      t.string :title, default: "기본제목값"
      t.string :purpose
      t.string :money
      t.string :date
      t.string :situation
      t.string :content, default: "내용을 입력해주세요."
      
      t.string :developname, defaut: "."
      t.string :finalmoney, default: "."
      
      t.string :finaltime, default: "."
      t.string :intro, default: "."
      t.string :name, default: "."
      
      t.timestamps null: false
    end
  end
end
