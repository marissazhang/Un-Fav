require 'twitter'

		client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = "consumer key here"
		  config.consumer_secret     = "consumer secret here"
		  config.access_token        = "access token here"
		  config.access_token_secret = "access token secret here"
		end

for fav in client.favorites
	puts fav.id
end

print "Enter any key to unfavorite everything with OOTD"
key=gets.chomp


client.favorites.each do |fav|
	if fav.text.downcase.index('#ootd')
		client.unfavorite(fav.id)
	end
end



#start from first 200 and go to next 200 and so on 


#use some kind of loop to loop through the twitter favourites to look for #OOTD 
#unfavourite oldest tweets first -> somehow organize all favourited tweets from oldest to newest?
#twitter IDs are chronologically ascending?





