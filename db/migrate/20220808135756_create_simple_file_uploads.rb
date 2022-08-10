class CreateSimpleFileUploads < ActiveRecord::Migration[6.1]
  def change
    create_table :simple_file_uploads do |t|
      t.string :name
      t.string :s3_file

      t.timestamps
    end
  end
end
