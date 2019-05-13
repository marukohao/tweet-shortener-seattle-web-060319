# Write your code here.
def dictionary
  hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  array = tweet.split(" ").
  new_array = []
  array.each do |word|
    if dictionary.keys.include?(word)
      new_array << dictionary[word]
    else
      new_array << word
    end
  end
  new_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |sent|
    puts word_substituter(sent)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)
  end
end 

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    tweet[0...137] + "..."
  else
    word_substituter(tweet)  
  end
end