require 'json'
require 'sinatra'

get '/api/:word1/:word2' do
  {
    words: params[:captures],
    status: Wordinator.anagram(params[:word1], params[:word2])
  }.to_json
end

class Wordinator
  def self.anagram word1, word2
    alphabetize(word1) == alphabetize(word2)
  end
  
  def self.alphabetize(word)
    word.downcase.chars.sort.join
  end
end