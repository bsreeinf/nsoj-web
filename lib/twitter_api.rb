class TwitterApi
	def self.our_public_tweets
		client.user_timeline('BBCnews', count: 4, exclude_replies: true, include_rts: false)
	end
	def self.client
		 @client ||= Twitter::REST::Client.new do |config|
	      config.consumer_key        = "2OqSubXaWS2InDGNtJbEU5hSL"
	      config.consumer_secret     = "1qHcPquasFgULuLgMPtmv58nCKJpTdxfjJ8KEiFdTqi3n74HrA"
	      config.access_token        = "3911553252-teYDacqdt3SRp0EUyzxG0Ou2Wgv11nx8MpABuVp"
	      config.access_token_secret = "R4gHRCNF3WbmhAjZBJCIvILliNuLxPtXfZdnX4oTUzWiO"
	    end
	end
end