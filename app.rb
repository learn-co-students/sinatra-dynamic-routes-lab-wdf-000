require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].chars.reverse.join("")}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    response = ""
    params[:number].to_i.times do
      response << "#{params[:phrase]}\n"
    end
    response
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.each_with_object(sentence = "") do |word, sentence|
      sentence << "#{word} "
    end
    "#{sentence.chop}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when 'add'
      "#{params[:number1].to_i + params[:number2].to_i}"
    when 'subtract'
      "#{params[:number1].to_i - params[:number2].to_i}"
    when 'multiply'
      "#{params[:number1].to_i * params[:number2].to_i}"
    when 'divide'
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end
end
