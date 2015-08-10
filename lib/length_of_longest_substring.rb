# Medium
# Given a string, find the length of the longest substring without repeating
# characters. For example, the longest substring without repeating letters for
# "abcabcbb" is "abc", which the length is 3. For "bbbbb" the longest substring
# is "b", with the length of 1.
def length_of_longest_substring(s)
  current = ''
  longest = ''
  s.split('').each do |character|
    if current.include?(character)
      longest = current if current.length > longest.length
      index = current.index(character) + 1
      current = current[index..-1]
    end
    current << character
  end
  [longest.length, current.length].max
end

# possible faster solution.

# def length_of_longest_substring(s)
#   return 0 if s.length == 0
#   return 1 if s.length == 1
#   characters = {}
#   longest = 0
#   s.split('').each_with_index do |character, index|
#     if characters.include?(character)
#       longest = characters[character] if characters[character] > longest
#       characters = {}
#     end
#     characters[character] = index
#   end
#   longest > characters.size ? longest : characters.size
# end
