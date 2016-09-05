
''' Part one: Strings and Integers '''

# Determines the number of words in a string
def word_count(string)
  string.split(" ").length
end

# Determines the average word length of the given sentence
def average_word_length(string)
  number_of_words = word_count(string)
  return nil if number_of_words == 0

  words = string.split(" ")
  letter_count = words.inject(0) do |memo, word|
    memo += word.length
    memo
  end
  letter_count / number_of_words.to_f
end

# Determines if the string is a palindrome
def palindrome?(string)
  string.reverse == string
end

# Returns an array of words (from a string) that contain vowels
def vowels(string)
  sentence_parts = string.split(" ")
  vowels = "%w|a e i o u|"
  words_with_vowels = []

  sentence_parts.each do |part|
    characters = part.split("")
    characters.each do |character|
      if vowels.include?(character)
        words_with_vowels << part
        break
      end
    end
  end
  words_with_vowels
end

# Determines if each word starts with a 'c'
def start_with_c?(string)
  condition = true
  string.split(" ").each do |word|
    if word[0] != "c"
      condition = false
      break
    end
  end
  condition
end

# Strips all whitespace from a string, including between words
def strip_whitespace(string)
  string.gsub(/[ ]/, "")
end

# Capitalizes the first letter of each word in a string
def title_case(string)
  title_cased = []
  string.split(" ").each do |word|
    title_cased << word.capitalize
  end
  title_cased.join(" ")
end

# Deletes the last 'number' elements of a string
def delete_last(string, number)
  new_string = ""
  letters = string.split("")
  counter = -1
  until new_string.length == (string.length - number) do
    new_string += letters[counter += 1]
  end
  new_string
end

# Determines if a date string can be converted into a Date object
def date_convertible?(string)
  # YYYY/MM/DD format
  string
    .gsub(/[\d{4}]/, "") # YYYY
    .gsub(/[\d{2}]/, "") # MM
    .gsub(/[\d{2}]/, "") # DD
    .length == 0 && string.length == 8
end

# Parses a URL and returns a hash containing the query parameters and their
# values
def parse_params(url)
  params_hash = {}
  params = url.index("?")
  return nil if params == nil

  param_array = url.slice(params + 1, url.length).split("&")
  param_array.each do |param|
    temp_values = param.split("=")
    params_hash[temp_values[0]] = temp_values[1]
  end
  params_hash
end

# Determines if the given phrase corresponds to the abbreviation of the first
# letters
def acronym?(phrase, abbreviation)
  words = phrase.split(" ")
  local_abbreviation = ""
  words.each do |word|
    local_abbreviation += word[0]
  end
  local_abbreviation == abbreviation
end

def alliteration?(string)
  count = 0
  words = string.split(" ")
  first_word_letter = words[0][0]
  words.each do |word|
    count += 1 if first_word_letter == word[0]
  end
  count == words.length
end

def to_money(string)
  ("%.2f" % string).prepend("$")
end

def numeric?(string)
  # Matches the float pattern
  string.gsub(/[\d+\.\d+]/, "") == ""
end

def concat(num_one, num_two)
  (num_one.to_s + num_two.to_s).to_i
end

''' Part two: Arrays and Exceptions '''

# Determines if a passed in array contains a string
def has_string?(array)
  found_string = false
  array.each do |item|
    if item.respond_to?("split")
      found_string = true
      break
    end
  end
  found_string
end

def sort_by_length(array)
  sorted = array.sort do |a, b|
    a.length <=> b.length
  end
  sorted
end

def mean(array)
  count = array.length
  sum = 0
  array.each do |number|
    sum += number
  end
  sum.to_f / count
end

def hashify(array)
  hash = {}
  array.each_with_index do |element, index|
    if index % 2 == 0
      hash[array[index]] = array[index + 1]
    end
  end
  hash
end

def super_compact(array)
  array.reject do |element|
    element.nil? || element.empty?
  end
end

def mode(array)
  unique = array.uniq
  count = {}
  unique.each do |element|
    count[element] = 0
  end

  array.each do |element|
    count[element] += 1
  end

  most = count.max_by do |key, value|
    value
  end
  most[0]
end

def symbolize(array)
  result = array.map do |element|
    element.to_sym
  end
  result
end

def index_of_max(array)
  array.each_with_index.max[1]
end

def merge(array_of_hashes)
  result = {}
  array_of_hashes.inject(result) do |memo, hash|
    hash.each do |key, value|
      (memo[key] ||= []) << value
    end
    memo
  end
end
