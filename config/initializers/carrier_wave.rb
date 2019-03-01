if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAJIRCJAVHR2NCPJFA'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['basicusers']
    config.fog_provider      =  'fog/aws'
  end
end