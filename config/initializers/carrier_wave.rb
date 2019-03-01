if Rails.env.production?
  CarrierWave.configure do |config|
    config.root = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'
    
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => Rails.application.secrets.aws_access_key_id,
      :aws_secret_access_key => Rails.application.secrets.aws_secret_access_key,
      :region                => ENV['S3_REGION']
    }
    config.fog_directory     =  ENV['S3_Bucket']
  end
end