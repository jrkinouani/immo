CarrierWave.configure do |config|
 config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',
    :aws_access_key_id => ENV['aws_access_key_id'],
    :aws_secret_access_key => ENV['aws_secret_access_key'],
    :region    =>'us-east-1',
    :host => 's3.amazonaws.com'

  }

  config.fog_directory  = 'domtomimmowebsite'
  config.fog_public     = false
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
end

  ##########################################
  # /!\ Temporary patch
  # disable CA-certificate check on Mac OSX
  ##########################################
    require 'excon'
  Excon.ssl_verify_peer = false
