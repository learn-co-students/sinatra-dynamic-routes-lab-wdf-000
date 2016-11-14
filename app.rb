require_relative 'config/environment'

class App < Sinatra::Base

	get "/reversename/:name" do 
		params[:name].reverse

		#or:
		# @user_name = params[:name].reverse
		# "#{@user_name}"
	end

	get "/square/:number" do
		@squared = params[:number].to_i ** 2
		"#{@squared}"

		# or:
		# number = params[:number].to_i
		# @squared = number ** 2
		# "#{@squared}"
	end

	get '/say/:number/:phrase' do
		@number = params[:number].to_i
		@phrase = params[:phrase]

		@output = ""
		@number.times do
			@output << "#{@phrase}\n" 
		end
		@output

		# or:
		#@number = params[:number].to_i
		#@phrase = params[:phrase]

		#@result = ""
		#@number.times do
		#@result += "#{@phrase}\n"
		#end
		#@result

		# or:
		# 	number = params[:number].to_i
		#  	phrase = params[:phrase]

		# 	result = ""
		# 	number.times do
		# 		result += "#{@phrase}\n"
		# 	end
		# 	result
		# end
	end

		get "/say/:word1/:word2/:word3/:word4/:word5" do
			@word1 = params[:word1]
			@word2 = params[:word2]
			@word3 = params[:word3]
			@word4 = params[:word4]
			@word5 = params[:word5]

			"#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}." 
		end

		get "/:operation/:number1/:number2" do
			@operation = params[:operation]
			@number1 = params[:number1].to_i
			@number2 = params[:number1].to_i
			"#{@operation + @number1 + @number2}"
		end



end