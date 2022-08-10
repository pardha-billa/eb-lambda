class SimpleFileUpload < ApplicationRecord
    mount_uploader :s3_file, S3FileUploader

end
