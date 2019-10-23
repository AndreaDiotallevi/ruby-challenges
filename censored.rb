# Create a procedure that takes each tweet, replace any banned phrase with the word "CENSORED" and "puts" it on the screen

test_tweets = [
  "This president sucks",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

corrected_tweets = []

test_tweets.each do |tweet|
  corrected_tweet = tweet
  banned_phrases.each do |phrase|
    if tweet.include? phrase
      corrected_tweet = corrected_tweet.gsub phrase, "CENSORED"
    end
  end
  corrected_tweets.push(corrected_tweet)
end

puts corrected_tweets
