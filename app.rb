require_relative 'config/environment'

class App < Sinatra::Base
	get '/reversename/:name' do
		params[:name].reverse
	end
	get '/square/:number' do
		( params[:number].to_i ** 2 ).to_s
	end
	get '/say/:number/:phrase' do
		(1..params[:number].to_i).to_a.collect { |x| params[:phrase] }.join("\n")
	end
	get '/say/:word1/:word2/:word3/:word4/:word5' do
		(1..5).to_a.collect { |x| params["word#{x}".to_sym] }.join(' ') + "."
	end
	get '/:operation/:number1/:number2' do
		operator = params[:operation]
		n1 = params[:number1].to_i
		n2 = params[:number2].to_i
		case operator 
		when "add"
			ans = n1 + n2
		when "subtract"
			ans = n1 - n2
		when "multiply"
			ans = n1 * n2
		when "divide"
			ans = n1 / n2
		else
			ans = "Unable to perform this operator"
		end
		ans.to_s
	end
end
