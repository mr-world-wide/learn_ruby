class Book
# write your code here
 attr_accessor :title
 
 def initialize
 end
 
  def title
    title_words = @title.split()
    cap_title = []
    title_words.each do |word|
     cap_title << word.capitalize!
    end
    
    @title = cap_title.join(" ")
 
  end

def capitalize(word)
  word.capitalize!
end



end
 