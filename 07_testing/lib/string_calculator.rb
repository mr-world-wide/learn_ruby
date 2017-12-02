class StringCalculator

  def self.add(*args)
   sum = 0
   args.each do |number|
      if is_number?(number) == true
        sum = sum + number
      else sum = sum + 0
     end
    
    sum
    
   end
   
   sum
    
  end
  
  def self.is_number?(string)
    true if Float(string) rescue false
  end
end