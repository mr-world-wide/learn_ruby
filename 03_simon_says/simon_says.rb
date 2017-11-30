#write your code here

def echo(saying)
    saying
end

def shout(saying)
    saying.upcase
end

def repeat(saying, repeats = 2)
    ("#{saying} " * repeats).chomp(" ")
end

def start_of_word(word, letters = 1)
    word[0..(letters-1)]
end

def first_word(words, number = 1)
    sentence = words.split(" ")
    words = sentence[0..(number-1)].join(" ")
end

def titleize(word)
    sentence = word.split(" ")
    newsentence = []
    sentence.each do |lower_case_word|
        if lower_case_word == "the" || lower_case_word == "and" || lower_case_word == "over"
            then newsentence << lower_case_word
               
            else lower_case_word.capitalize!
                newsentence << lower_case_word
        end
    end
    first_word = newsentence[0]
    first_word.capitalize!
    newsentence[0] = first_word
    
    newsentence.join(" ")
end
