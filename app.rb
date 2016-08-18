require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i * params[:number].to_i
    "#{@num.to_s}"
  end

  get '/say/:number/:phrase' do
    final_string = ""
    (params[:number].to_i).times do
      final_string += "#{params[:phrase]}\n"
    end
    final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      sum = params[:number1].to_i + params[:number2].to_i
      "#{sum.to_s}"
    elsif params[:operation] == "subtract"
      result = params[:number1].to_i - params[:number2].to_i
      "#{result.to_s}"
    elsif params[:operation] == "multiply"
      result = params[:number1].to_i * params[:number2].to_i
      "#{result.to_s}"
    elsif params[:operation] == "divide"
      result = params[:number1].to_i / params[:number2].to_i
      "#{result.to_s}"
    else
      "wrong input"
    end
                           
  end

end