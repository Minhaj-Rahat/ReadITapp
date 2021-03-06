class CreateJoinTableTagsBooks < ActiveRecord::Migration[5.2]
  def change
    create_join_table :tags, :books do |t|
      t.index [:tag_id, :book_id]
      t.index [:book_id, :tag_id]
    end
  end
end
