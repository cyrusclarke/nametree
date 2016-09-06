CarrierWave.configure do |config|
    config.storage        = :aws                        # required
    config.aws_bucket     = ENV["AWS_BUCKET"]                        # required
    config.aws_acl		  = "public-read"                      # required
  
    config.aws_credentials = {
    	access_key_id: ENV["AWS_ACCESS_KEY"],
    	secret_access_key: ENV["AWS_SECRET_KEY"],
    	region: ENV["AWS_REGION"]
    }

end