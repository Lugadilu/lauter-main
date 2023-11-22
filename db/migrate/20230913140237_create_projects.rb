class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :slug
      t.text :excerpt
      t.text :description
      t.string :url
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
