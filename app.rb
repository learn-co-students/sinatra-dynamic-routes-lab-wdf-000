require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number*number}"
  end

  get '/say/:number/:phrase' do
    final_string = ''
    (params[:number].to_i).times do
    final_string += "#{params[:phrase]}\n" 
    end
    final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num_1 = params[:number1].to_i
    num_2 = params[:number2].to_i
    answer = nil
    if op == "add"
      answer = num_1 + num_2
    elsif op == "subtract"
      answer = num_1 - num_2
    elsif op == "multiply"
      answer = num_1 * num_2
    elsif op == "divide"
      answer = num_1 / num_2
    else
      "Operation is undefined"
    end
    answer.to_s
  end
end