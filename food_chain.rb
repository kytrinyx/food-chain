module FoodChain
  def self.song
    verses(1, 8)
  end

  def self.verses(lower_bound, upper_bound)
    (lower_bound..upper_bound).map {|i| verse(i)}.join("\n\n")
  end

  def self.verse(number)
    [
      opening(number),
      aside(number),
      chain(number),
      conclusion(number),
    ].join("")
  end

  ## song-level stuff?

  def self.opening(number)
    "I know an old lady who swallowed #{morsel(number)}.\n"
  end

  def self.conclusion(number)
    if number == 8
      "She's dead, of course!"
    else
      "I don't know why she swallowed the fly. Perhaps she'll die."
    end
  end

  # well, this is kind of awful.
  def self.chain(number)
    case number
    when 1, 8
      ""
    else
      number.downto(2).map {|i| motivation(i) }.join("")
    end
  end

  def self.motivation(number)
    "She swallowed #{predator(number)} to catch #{prey(number)}.\n"
  end

  def self.aside(number)
    [
     "",
    "It wriggled and jiggled and tickled inside her.\n",
    "How absurd to swallow a bird!\n",
    "Imagine that, to swallow a cat!\n",
    "What a hog, to swallow a dog!\n",
    "Just opened her throat and swallowed a goat!\n",
    "I don't know how she swallowed a cow!\n",
    ""
    ][number-1]
  end

  ## critter-type stuff?

  def self.morsel(i)
    [
      "a fly",
      "a spider",
      "a bird",
      "a cat",
      "a dog",
      "a goat",
      "a cow",
      "a horse",
    ][i-1]
  end

  # In what universe does a goat eat a dog
  # and a cow eat a goat and a horse eat a cow?
  # They all eat grass. This is plain silly.
  def self.predator(i)
    [
      nil,
      "the spider",
      "the bird",
      "the cat",
      "the dog",
      "the goat",
      "the cow",
      "the horse",
    ][i-1]
  end

  def self.prey(i)
    [
      nil,
      "the fly",
      "the spider that wriggled and jiggled and tickled inside her",
      "the bird",
      "the cat",
      "the dog",
      "the goat",
      "the cow",
      "the horse",
    ][i-1]
  end
end
