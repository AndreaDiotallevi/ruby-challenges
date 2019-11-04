# "Did you mean...?" - Kata from www.codewars.com
# I'm sure, you know Google's "Did you mean ...?", when you entered a search term and mistyped a word.
# In this kata we want to implement something similar.
# You'll get an entered term (lowercase string) and an array of known words (also lowercase strings).
# Your task is to find out, which word from the dictionary is most similar to the entered one.
# The similarity is described by the minimum number of letters you have to add,
# remove or replace in order to get from the entered word to one of the dictionary.
# The lower the number of required changes, the higher the similarity between each two words.
# Same words are obviously the most similar ones. A word that needs one letter to be changed is
# more similar to another word that needs 2 (or more) letters to be changed.
# E.g. the mistyped term berr is more similar to beer (1 letter to be replaced) than to barrel (3 letters to be changed in total).
# Extend the dictionary in a way, that it is able to return you the most similar word from the list of known words.

# Code Examples:
# fruits = new Dictionary(['cherry', 'pineapple', 'melon', 'strawberry', 'raspberry']);
# fruits.findMostSimilar('strawbery'); // must return "strawberry"
# fruits.findMostSimilar('berry'); // must return "cherry"

class Dictionary
  def initialize(words)
    @words = words
  end
  def find_most_similar(term)
    @words.min_by do |word|
        levenshtein_distance(word, term)
    end
  end
  def levenshtein_distance(s, t)
    m = s.length
    n = t.length
    return m if n == 0
    return n if m == 0
    d = Array.new(m + 1) {Array.new(n + 1)}
    (0..m).each {|i| d[i][0] = i}
    (0..n).each {|j| d[0][j] = j}
    (1..n).each do |j|
      (1..m).each do |i|
        d[i][j] = if s[i-1] == t[j-1] # adjust index into string
                    d[i-1][j-1]       # no operation required
                  else
                    [ d[i-1][j]+1,    # deletion
                      d[i][j-1]+1,    # insertion
                      d[i-1][j-1]+1,  # substitution
                    ].min
                  end
      end
    end
    d[m][n]
  end
end
