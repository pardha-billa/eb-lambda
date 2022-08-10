class S3FileUploader < CarrierWave::Uploader::Base
  storage :fog
end
