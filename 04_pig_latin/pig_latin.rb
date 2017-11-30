#write your code here

def translate(sentence)

translated_sentence = []

words = sentence.split(" ")

words.each do |word| 

    transalation = ""
    first_letter = word[0]
    second_letter = word[1]
    third_letter = word[2]

        if check_for_qu(word)
            transalation = translate_qu(word)
            
        elsif ["a","i","e","o","u"].include?(first_letter)
            transalation = "#{word}ay"
    
        elsif ["a","i","e","o","u"].include?(second_letter)
             subset = word.slice!(0)
            transalation = word << "#{subset}ay"
            
        elsif ["a","i","e","o","u"].include?(third_letter)
             subset = word.slice!(0..1)
            transalation = word << "#{subset}ay"
    
         else subset = word.slice!(0..2)
            transalation = word << "#{subset}ay"
    
        end
    
     translated_sentence << transalation
 end
 
 translated_sentence.join(" ")
 
end

def check_for_qu(word)
    word.include?("qu")
end

def translate_qu(quword)
    if quword[0,2] == "qu"
        subset = quword.slice!(0..1)
        quword = "#{quword}#{subset}ay"
    
    elsif quword[1,2] == "qu"
        subset = quword.slice!(0..2)
        quword = "#{quword}#{subset}ay"
    end
    
end

puts translate("Josh is completly awesoem at code, what a ridcilous thing this is that he made")

    

