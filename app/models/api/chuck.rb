class Api::Chuck
    include HTTParty
    base_uri 'api.chucknorris.io/jokes'

    def random
      response = self.class.get("/random")
      results = []
      joke = Api::Joke.new(response['icon_url'],response['url'],response['value'])
      results.push(joke)
      results
    end

    def search(query)
      response = self.class.get("/search?query=#{query}")
      results = []
      count = response['total'].to_i
      count.times.each do |i|
        joke = Api::Joke.new(response['result'][i]['icon_url'],response['result'][i]['url'],response['result'][i]['value'])
        results.push(joke)
        i += 1
      end
      results
    end

    def category(category)
      response = self.class.get("/random?category=#{category}")
      puts response
      results = []
      joke = Api::Joke.new(response['icon_url'],response['url'],response['value'])
      results.push(joke)
      results
    end

    def categories
      response = self.class.get("/categories")
    end

end
