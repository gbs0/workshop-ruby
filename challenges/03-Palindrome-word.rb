def palindrome?(word)
  # TODO: return true/false depending if the *word* is a palindrome
  
  # return "#{word[0]} #{word[-1]}"
  # return true ? word[0].downcase == word[-1].downcase : false 
  
  return word.reverse.downcase == word.downcase
end

# To see the result of this method you can uncomment the line below:
p palindrome?("Stats")
