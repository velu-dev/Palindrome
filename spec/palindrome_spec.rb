require 'palindrome'
require 'byebug'
require 'simplecov'
SimpleCov.start 'rails'
describe Palindrome do 
   context 'When testing the HelloWorld class' do 
      
      it "should say 'Hello World' when we call the say_hello method" do 
         @value = "malayalam"
         test = Palindrome.new(@value) 
         result = test.result
         expect(result[:result]).to eq true
         expect(result[:test]).to eq @value 
         expect(result[:message]).to eq  "Your Text is palindrome"
      end
      it "should not palindrome" do
         @value = "velusamy"
         test = Palindrome.new(@value) 
         result = test.result
         expect(result[:result]).to eq false
         expect(result[:test]).to match @value 
         expect(result[:message]).to match "Your text not a palindrome"
      end
      
   end
end