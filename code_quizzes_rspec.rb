
require_relative "./code_quizzes"

''' Part one: Strings and Integers '''
describe "#word_count" do
  it "returns the number of words in a string" do
    string = "laughter, it's free"
    expect(word_count(string)).to eq 3
  end
  it "returns 0 for an empty string" do
    empty_string = ""
    expect(word_count(empty_string)).to eq 0
  end
end

describe "#average_word_length" do
  it "returns the average word length" do
    string = "hello world"
    expect(average_word_length(string)).to eq 5

    string = "I wish that I was cool"
    expect(average_word_length(string)).to be_within(0.01).of 2.83
  end

  it "returns nil for empty strings" do
    string = ""
    expect(average_word_length(string)).to be_nil
  end
end

describe "#palindrome?" do
  it "returns true if a string is a palindrome" do
    string = "racecar"
    expect(palindrome?(string)).to be true
  end

  it "returns false if a string is not a palindrome" do
    string = "hello world"
    expect(palindrome?(string)).to be false
  end
end

describe "#vowels" do
  it "returns an array of words with vowels" do
    string = "24 hour roadside assistance"
    expected = ["hour", "roadside", "assistance"]
    expect(vowels(string)).to eq expected
  end
end

describe "#start_with_c?" do
  it "returns true if all words begin with 'c'" do
    string = "cool collar cute cat"
    expect(start_with_c?(string)).to be true
  end

  it "returns false if all words do not begin with c" do
    string = "crazy cat dude"
    expect(start_with_c?(string)).to be false
  end
end

describe "#strip_whitespace" do
  it "removes all whitespace" do
    string = "   hello world"
    expected = "helloworld"
    expect(strip_whitespace(string)).to eq expected
  end
end

describe "#title_case" do
  it "capitalizes the first letter of every word" do
    string = "hello world"
    expected = "Hello World"
    expect(title_case(string)).to eq expected
  end
end

describe "#delete_last" do
  it "removes the last n elements from a string" do
    string = "hello"
    number = 2
    expect(delete_last(string, number)).to eq "hel"
  end

  it "returns an empty string if the string and value n are the same length" do
    string = ""
    number = 0
    expect(delete_last(string, number)).to eq ""
  end

  it "mutates itself in place" do
    string = "hello"
    number = 1
    expect(delete_last(string, number)).to eq string.replace("hell")
  end
end

describe "#date_convertible?" do
  it "returns true if the string can be converted into a date" do
    string = "20120120"
    expect(date_convertible?(string)).to be true
  end

  it "returns false if the string cannot be converted into a date" do
    string = "hello world"
    expect(date_convertible?(string)).to be false
  end
end

describe "#parse_params" do
  it "converts the url query parameters into a hash" do
    url = "https//something.com?days_ago=1000&sort_by=value"
    expected = {
      "days_ago" => "1000",
      "sort_by" => "value"
    }
    expect(parse_params(url)).to eq expected
  end

  it "returns nil if there are no query parameters" do
    url = "https://something.com"
    expect(parse_params(url)).to be_nil
  end
end

describe "#acronym?" do
  it "returns true if the word is an acronym" do
    phrase = "what you see is what you get"
    abbreviation = "wysiwyg"
    expect(acronym?(phrase, abbreviation)).to be true
  end

  it "returns false if the word is not an acronym" do
    phrase = "hello world"
    abbreviation = "wh"
    expect(acronym?(phrase, abbreviation)).to be false
  end
end

describe "#alliteration?" do
  it "returns true if the words in a string all start with the same letter" do
    string = "crazy cows consume catfish"
    expect(alliteration?(string)).to be true
  end

  it "returns false if words start with different letters" do
    string = "sky high stacks"
    expect(alliteration?(string)).to be false
  end
end

describe "#to_money" do
  it "converts a float amount to a string money format" do
    amount = 12.991
    expected = "$12.99"
    expect(to_money(amount)).to eq expected
  end

  it "correctly rounds zeros" do
    amount = 9
    expected = "$9.00"
    expect(to_money(amount)).to eq expected
  end
end

describe "#numeric?" do
  it "returns true if the number can be converted into a Float" do
    string = "12.48"
    expected = true
    expect(numeric?(string)).to be expected
  end

  it "returns false if a string cannot be converted into a Float" do
    string = "hello"
    expected = false
    expect(numeric?(string)).to be expected
  end
end

describe "#concat" do
  it "concatenates two integers" do
    num_one = 42
    num_two = 99
    expected = 4299
    expect(concat(num_one, num_two)).to eq expected
  end
end

''' Part two: Arrays and Exceptions '''
describe "#has_string?" do
  it "returns true if the passed in array has a string element" do
    array = [:bob, "the", 42]
    expected = true

    expect(has_string?(array)).to be expected
  end

  it "returns false if the passed in array does not have a string element" do
    array = [:hello, :world, 43.5]
    expected = false

    expect(has_string?(array)).to be expected
  end
end

describe "#sort_by_length" do
  it "orders the words in an array from smallest to largest" do
    array = ["apple", "banana", "cantaloupe", "pear"]
    expected = ["pear", "apple", "banana", "cantaloupe"]

    expect(sort_by_length(array)).to eq expected
  end
end

describe "#mean" do
  it "calculates average" do
    array = [1, 2, 3, 4]
    expected = 2.5

    expect(mean(array)).to eq expected
  end
end

describe "#hashify" do
  it "converts an array to a hash" do
    array = [:a, :b, :c, :d]
    expected = {
      a: :b,
      c: :d
    }

    expect(hashify(array)).to eq expected
  end
end

describe "#super_compact" do
  it "removes nil and empty elements" do
    array = ["hello", "", {}, "world", [], nil]
    expected = ["hello", "world"]

    expect(super_compact(array)).to eq expected
  end
end

describe "#mode" do
  it "returns the most common element" do
    array = ["a", "b", "c", "a", "a", "b"]
    expected = "a"

    expect(mode(array)).to eq expected
  end
end

describe "#symbolize" do
  it "creates an array of symbols" do
    array = ["a", "b", "c"]
    expected = [:a, :b, :c]

    expect(symbolize(array)).to eq expected
  end
end

describe "#index_of_max" do
  it "returns the index of the largest element in an array" do
    array = [1, 2, 3]
    expected = 2

    expect(index_of_max(array)).to eq expected
  end
end

describe "#merge" do
  it "converts an array of hashes to a single hash" do
    array_of_hashes = [
      {
        a: 1,
        b: 2
      },
      {
        a: 3,
        b: 24,
        c: 4
      }
    ]
    expected = {
      a: [1, 3],
      b: [2, 24],
      c: [4]
    }

    expect(merge(array_of_hashes)).to eq expected
  end
end
