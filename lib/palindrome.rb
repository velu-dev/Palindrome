class Palindrome
   def initialize(palindrome)
    @text = palindrome
    dec_val = 1
    split_text = @text.split("")
    out_array = []
    split_text.map do
    	out_array << split_text[-dec_val]
    	dec_val = dec_val + 1
    end
    @result_text = out_array.join("")
    end
    def result
    	@result = @result_text == @text
    if @result
    	puts "Your Text is palindrome - #{@text}"
    	data = {
    		:result => @result,
    		:test => @text,
    		:message => "Your Text is palindrome"
    	}
    else
    	puts "Your text not a palindrome - #{@text}"
    	data = {
    		:result => @result,
    		:test => @text,
    		:message => "Your text not a palindrome"
    	}
    end
    end
end

# paly = Palindrome.new("ragu")
# paly.result
