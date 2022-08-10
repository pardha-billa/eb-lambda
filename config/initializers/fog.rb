CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     "#{Rails.application.credentials.aws_key}",
    aws_secret_access_key: "#{Rails.application.credentials.aws_secret}",
    host: "s3-eu-west-2.amazonaws.com",
    region: "eu-west-2"
  }
  config.fog_directory  = 'lambda-upload-rails'
  config.fog_public     = false
end