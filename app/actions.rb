# Homepage (Root path)
get '/' do
  erb :index
end

get '/tracks' do 
  @tracks = Track.all
  erb :'tracks/index'
end

get '/tracks/new' do
  erb :'tracks/new'
end

post '/tracks/new' do
  @tracks = Track.new(
    title: params[:title],
    auhtor: params[:author],
    url: params[:url]
    )
end
