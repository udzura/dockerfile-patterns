require 'sinatra'

configure do
  file = File.new("/data/access.log", 'a+')
  file.sync = true
  use Rack::CommonLogger, file
end

get '/' do
  "Accessed: root"
end

get '/:slug' do
  "Accessed: /#{params[:slug]}"
end
