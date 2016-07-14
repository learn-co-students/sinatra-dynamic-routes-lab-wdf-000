require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    new_string = ""
    split_name = params[:name].split("")
      until split_name.empty?
        new_string << split_name.pop
      end

    "#{new_string}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    final = ""
    params[:number].to_i.times do
      final << "#{params[:phrase]}\n"
    end
    final
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operations_hash = {
      "add" => :+,
      "subtract" => :-,
      "multiply" => :*,
      "divide" => :/
    }

    result = params[:number1].to_i.send(operations_hash[params[:operation]], params[:number2].to_i)

    "#{result}"
  end



end
