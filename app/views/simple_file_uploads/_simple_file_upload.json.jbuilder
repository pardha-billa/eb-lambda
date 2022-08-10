json.extract! simple_file_upload, :id, :name, :s3_file, :created_at, :updated_at
json.url simple_file_upload_url(simple_file_upload, format: :json)
