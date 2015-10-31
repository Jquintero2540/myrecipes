if Rails.env.production?
  CarrireWave.configure do |config|
    config_fog.credentials = {
      :provider => 'AWS',
      :aws_access_key_id => ENV['S3_ACCESS_KEY'],
      :aws_secret_access_key => ENV['S3_SECRET_KEY']
    }
    
    config.fog_directory = ENV['S3_BUCKET']
    
  end
end