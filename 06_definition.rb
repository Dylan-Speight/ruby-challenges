# Definition
# 
# Extend the definition class to have three different methods:
# 1. add_word(word, definition), should store a word and definition
# 2. lookup(word), should return a definition
# 3. total_words, should return the total number of words
# 
# Example:
# definition = Definition.new
# definition.add_word('ruby', 'A red, precious stone')
# definition.total_words -> should return 1
# definition.lookup('ruby') -> should return 'A red, precious stone'
#
# Check your solution by running the tests:
# ruby tests/06_definition_test.rb


class Definition
    def initialize
        @words = {}     # Creates an empty hash to push words and definitions into. Using hash allows for the words to have a definition.
    end
    def add_word(name, definition)
        @words[name] = definition   # Adds the key 'name' and assigns the value of 'definition' to it within the hash.
    end
    def total_words
        @words.length   # Checks for the number of key, value pairs and returns 
    end
    def lookup(name)
        @words[name]    # Will lookup the key/name and return the value/definition
    end
end
