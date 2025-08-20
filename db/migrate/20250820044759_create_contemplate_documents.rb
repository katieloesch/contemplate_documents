class CreateContemplateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :contemplate_documents do |t|
      t.string :title
      t.string :description
      t.string :file_url
      t.string :text
      t.string :updated_at
      t.string :image_url
      t.string :text

      t.timestamps
    end
  end
end
