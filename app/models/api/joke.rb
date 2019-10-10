class Api::Joke
  attr_accessor :icon_url,:url,:value
  def initialize(icon_url,url,value)
    @icon_url = icon_url
    @url = url
    @value = value
  end
end