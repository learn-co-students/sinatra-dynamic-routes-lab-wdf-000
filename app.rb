require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    num_to_square = params[:number].to_i
    squared_num = num_to_square ** 2
    squared_num.to_s
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    repeated = []
    number.times do
      repeated << "#{phrase}\n"
    end
    repeated.join
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    w1 = params[:word1]
    w2 = params[:word2]
    w3 = params[:word3]
    w4 = params[:word4]
    w5 = params[:word5]
    [w1, w2, w3, w4, w5].join(' ') + "."
  end

  get '/:operation/:number1/:number2' do
    operator = params[:operation]
    num1 = params[:number1]
    num2 = params[:number2]

    instance_eval([num1, operator, num2].join(' '))
  end
end
