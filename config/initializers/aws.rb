if Rails.env == 'development'

  CarrierWave.configure do |config|
     config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     "AKIAJ7CSTU26KFM7JWOQ",
      aws_secret_access_key: '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',
      region:                'eu-west-1'
    }

    config.fog_directory  = 'immorunproduction'
    config.fog_public     = false
    config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
  end

  ##########################################
  # /!\ Temporary patch
  # disable CA-certificate check on Mac OSX
  ##########################################
    require 'excon'
  Excon.ssl_verify_peer = false


end
