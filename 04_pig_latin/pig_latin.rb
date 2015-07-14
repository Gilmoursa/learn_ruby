def piglatin(word)
  vowels = %w[a e i o u]
  alpha = ('a'..'z').to_a
  consonants = alpha - vowels
  if vowels.include?(word[0])
    word + 'ay'
  elsif word[0..1] == 'qu'
    word[2..-1] + 'quay'
  elsif word[0..2] == 'squ'
    word[3..-1] + 'squay'
  elsif consonants.include?(word[0]) && (consonants.include?(word[1]) && consonants.include?(word[2]))
    word[3..-1] + word[0..2] + 'ay'
  elsif consonants.include?(word[0]) && consonants.include?(word[1])
    word[2..-1] + word[0..1] + 'ay'
  else
    word[1..-1]+ word[0] + 'ay'
  end
end
    

def translate(string)
  string.split.map {|x| piglatin(x)}.join(' ')
end