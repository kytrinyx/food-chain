module FoodChain
  def self.song
    verses(1, 8)
  end

  def self.verses(lower_bound, upper_bound)
    (lower_bound..upper_bound).map {|i| verse(i)}.join("\n\n")
  end

  def self.verse(number)
    case number
    when 1
      "I know an old lady who swallowed #{morsel(number)}.\n" \
      "I don't know why she swallowed the fly. Perhaps she'll die."
    when 2..7
      "I know an old lady who swallowed #{morsel(number)}.\n" \
      "#{aside(number)}\n" \
      "#{chain(number)}" \
      "I don't know why she swallowed the fly. Perhaps she'll die."
    when 8
      "I know an old lady who swallowed #{morsel(number)}.\n" \
      "She's dead, of course!"
    end
  end

  def self.chain(i)
    i.downto(2).map {|number|
      "She swallowed #{predator(number)} to catch #{prey(number)}.\n"
    }.join("")
  end

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

  def self.aside(i)
    [
     nil,
    "It wriggled and jiggled and tickled inside her.",
    "How absurd to swallow a bird!",
    "Imagine that, to swallow a cat!",
    "What a hog, to swallow a dog!",
    "Just opened her throat and swallowed a goat!",
    "I don't know how she swallowed a cow!",
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
