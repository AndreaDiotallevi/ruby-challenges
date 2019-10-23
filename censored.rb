test_tweets = [
  "This president sucks",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

corrected_tweets = []

test_tweets.each_with_index do |tweet, i|
  corrected_tweets.push(tweet.split)
  tweet.split.each_with_index do |word, j|
    if banned_phrases.include?(word)
      corrected_tweets[i][j] = "CENSORED"
    else
      corrected_tweets[i][j] = word
    end
  end
  puts corrected_tweets[i].join(" ")
end
