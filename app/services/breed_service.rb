class BreedService
  def save_breed
    response = HTTParty.get('https://api.thedogapi.com/v1/breeds')
    bred = response[(0..171).to_a.sample]
    Breed.create(name: bred['name'], life_span: bred['life_span'], breed_for: bred['bred_for'],
                 image_url: bred['image']['url'])
  end
end
