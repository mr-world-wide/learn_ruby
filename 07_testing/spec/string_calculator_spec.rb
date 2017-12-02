# spec/string_calculator_spec.rb
require "string_calculator"

describe StringCalculator do

  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(StringCalculator.add("")).to eql(0)
      end
    end
  end

  describe ".add" do
      context "given a single number in a string" do
        it "returns that number" do
            expect(StringCalculator.add(5)).to eql(5)
        end
    end
  end

  describe ".add" do 
      context "given two numbers" do
          it "returns the sum of those numbers" do
              expect(StringCalculator.add(5,7)).to eql(12)
          end
      end
  end
  
  describe ".add" do
      context "given three numbers" do
          it "returns the sume of those numbers" do
              expect(StringCalculator.add(5,3,3)).to eql(11)
          end
      end
  end
  
  describe ".add" do 
      context "given 1 empty string and 2 numbers" do
          it "returns the sum of the 2 numbers" do
              expect(StringCalculator.add(5,"",5)).to eql(10)
          end
      end
  end
  
  describe ".add" do
      context "given a floating number" do
          context "given 5.3, 10" do
              it "returns 10.3" do
              expect(StringCalculator.add(5.3,10)).to eql(15.3)
          end
          end
      end
  end
  
  describe ".add" do
      context "given a word and two numbers" do
          it "returns the sum of only the two numbers" do
              expect(StringCalculator.add("Josh",1, 5)).to eql(6)
          end
      end
  end
  


end

