class AwsStorage

    def s3_connection
      Aws.config.update({
        region: 'us-east-1',
        #credentials: Aws::Credentials.new("#{Rails.application.credentials.aws_key}", "#{Rails.application.credentials.aws_secret}")
        credentials: Aws::Credentials.new('AKIAXYVO7HIGKQGDNDRW','/N4wAgIAcypGeg5pS8zCqxVvxXKvmgkE1fQqsDT3')
      })
    end
end