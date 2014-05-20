require 'twitter'

class UnFav

	def initialize
		@client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = "consumer key here"
		  config.consumer_secret     = "consumer secret here"
		  config.access_token        = "access token here"
		  config.access_token_secret = "access token secret here"
		  end
	end

	def show_favs
			for fav in @client.favorites
				puts fav.id
			end
	end

	def delete_favs
		@client.favorites.each do |fav|
			if fav.text.downcase.index('#ootd')
				@client.unfavorite(fav.id)
			end
		end
	end

 end


 sk = UnFav.new
 sk.show_favs

 print "Enter any key to unfavorite everything with the keyword OOTD"
	key=gets.chomp

 sk.delete_favs

