require 'sinatra'

class App < Sinatra::Base

  configure do
    set :status, "unknown"
  end

  post '/moving' do
    settings.status = "moving"
  end

  post '/stopped' do
    settings.status = "stopped"
  end

  get '/' do
    settings.status
  end

end
