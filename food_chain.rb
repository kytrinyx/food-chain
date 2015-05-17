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
    when 2
      "I know an old lady who swallowed #{morsel(number)}.\n" \
      "It wriggled and jiggled and tickled inside her.\n" \
      "She swallowed the spider to catch the fly.\n" \
      "I don't know why she swallowed the fly. Perhaps she'll die."
    when 3
      "I know an old lady who swallowed #{morsel(number)}.\n" \
      "How absurd to swallow a bird!\n" \
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" \
      "She swallowed the spider to catch the fly.\n" \
      "I don't know why she swallowed the fly. Perhaps she'll die."
    when 4
      "I know an old lady who swallowed #{morsel(number)}.\n" \
      "Imagine that, to swallow a cat!\n" \
      "She swallowed the cat to catch the bird.\n" \
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" \
      "She swallowed the spider to catch the fly.\n" \
      "I don't know why she swallowed the fly. Perhaps she'll die."
    when 5
      "I know an old lady who swallowed #{morsel(number)}.\n" \
      "What a hog, to swallow a dog!\n" \
      "She swallowed the dog to catch the cat.\n" \
      "She swallowed the cat to catch the bird.\n" \
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" \
      "She swallowed the spider to catch the fly.\n" \
      "I don't know why she swallowed the fly. Perhaps she'll die."
    when 6
      "I know an old lady who swallowed #{morsel(number)}.\n" \
      "Just opened her throat and swallowed a goat!\n" \
      "She swallowed the goat to catch the dog.\n" \
      "She swallowed the dog to catch the cat.\n" \
      "She swallowed the cat to catch the bird.\n" \
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" \
      "She swallowed the spider to catch the fly.\n" \
      "I don't know why she swallowed the fly. Perhaps she'll die."
    when 7
      "I know an old lady who swallowed #{morsel(number)}.\n" \
      "I don't know how she swallowed a cow!\n" \
      "She swallowed the cow to catch the goat.\n" \
      "She swallowed the goat to catch the dog.\n" \
      "She swallowed the dog to catch the cat.\n" \
      "She swallowed the cat to catch the bird.\n" \
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" \
      "She swallowed the spider to catch the fly.\n" \
      "I don't know why she swallowed the fly. Perhaps she'll die."
    when 8
      "I know an old lady who swallowed #{morsel(number)}.\n" \
      "She's dead, of course!"
    end
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
end
