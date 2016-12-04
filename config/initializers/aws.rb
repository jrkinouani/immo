  CarrierWave.configure do |config|

    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     "AKIAIPEAEK2A6PDRNRIQ",
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
