class JokesService
  def save_Jokes
    response = HTTParty.get('https://v2.jokeapi.dev/joke/Any?type=single')
    puts(Joke.all)
    Joke.create(name: response['joke'])
  end
end
