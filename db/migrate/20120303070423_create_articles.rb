class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :type
      t.string :title
      t.string :author
      t.text :body
      t.text :extended
      t.text :excerpt
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :user_id
      t.string :permalink
      t.string :guid
      t.integer :text_filter_id
      t.text :whiteboard
      t.string :name
      t.boolean :published
      t.boolean :allow_pings
      t.boolean :allow_comments
      t.datetime :published_at
      t.string :state
      t.integer :parent_id
      t.text :settings
      t.string :post_type

      t.timestamps
    end
  end
end
