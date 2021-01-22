# frozen_string_literal: true

# analyze will find instances of each word provided in the dictionary ala a hash of each word in the dictionary to the number of times
module SubStrings 
  def self.analyze(sentence, dictionary) 
    # make it case insensitive
    sentence = sentence.downcase
    dictionary = dictionary.map do |word| 
      word.downcase.to_sym
    end
    # initialize the analysis
    analysis = dictionary.reduce({}) do |blob, current| 
      blob[current] = 0
      blob
    end
    analysis.keys.each do |word| 
      analysis[word] = sentence.scan(word.to_s).length
    end
    analysis
  end
end
