class Ogre
  attr_accessor :strength, :speed, :smell
  def initialize(strength, speed, smell)
    @strength = strength
    @speed = speed
    @smell = smell
  end
end

class Dragon
  attr_accessor :strength, :speed, :color
  def initialize(strength, speed, color)
    @strength = strength
    @speed = speed
    @color = color
  end
end

class Fairy
  attr_accessor :strength, :speed, :intelligence
  def initialize(intelligence)
    @strength = 1
    @speed = 42
    @intelligence = intelligence
  end
end

def save_game(characters)
  yaml = YAML::dump(characters)
  game_file = GameFile.new("/my_game/saved.yaml")
  game_file.write(yaml)
end

def load_game
  game_file = GameFile.new("/my_game/saved.yaml")
  yaml = game_file.read
  YAML::load(yaml)
end

# Let's use this concept to extend our Ogre example.
# As you could see from the Ogre class, YAML understands any Ruby object you throw at it.
# This means we don't need to put the YAML method calls in the Ogre class itself -- interacting with YAML can happen at a much higher level, like our save_game method below.
# Finish the exercise so that the game characters can be saved to disk and loaded later.
# To save a YAML string to disk, use the handy GameFile#write(yaml) and GameFile#read methods I've written for you. GameFile.new accepts one parameter, which should be a .yaml file.
