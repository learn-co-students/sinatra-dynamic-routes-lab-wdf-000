require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
		@name = params[:name]
		@name.reverse
	end

	get '/square/:number' do
		@number = params[:number].to_i
		(@number ** 2).to_s
	end

	get '/say/:number/:phrase' do
		@number = params[:number].to_i
		@phrase = params[:phrase]

		(@phrase + "\n") * @number
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		sentence = []
		params.each do |key, value|
			if key.include?("word")
				sentence << value
			end
		end
		sentence.join(" ") + "."
	end

	get '/:operation/:number1/:number2' do
		@operation = params[:operation]
		@number1 = params[:number1].to_i
		@number2 = params[:number2].to_i

		case @operation
		when "add"
			@result = @number1 + @number2
		when "subtract"
			@result = @number1 - @number2
		when "multiply"
			@result = @number1 * @number2
		when "divide"
			@result = @number1 / @number2
		end	

		@result.to_s
	end

end