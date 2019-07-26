# Write your code here.
def dictionary 
  my_hash = {"hello" => "hi", 
  "to" => "2", 
  "two" => "2", 
  "too" => "2", 
  "for" => "4", 
  "four" => "4", 
  "be" => "b", 
  "you" => "u", 
  "at" => "@", 
  "and" => "&"}
end

def word_substituter (string)
  array = string.split
  array.each_with_index do |words,index|
    dictionary.keys.each do |x|
      if words.downcase == x 
      array[index] = dictionary[x]
      end
      end
      end
array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each_with_index do  |tweet, index|
  tweet_array = tweet.split 
  tweet_array.each_with_index do  |words, index|
  dictionary.keys.each do |x|
    if words.downcase == x 
      tweet_array[index] = dictionary[x]
    end
  end
end 
tweet = array.join(" ")
puts tweet
end 
end