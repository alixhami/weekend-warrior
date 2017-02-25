class Alouette

  @@all_items = [
    "Et la tête!",
    "Et le bec!",
    "Et les yeux!",
    "Et le cou!",
    "Et les ailes!",
    "Et les pattes!",
    "Et la queue!",
    "Et le dos!"
  ]

  def self.lines_for_verse(num)
    lines = []

    (0..num).each do |index|
      lines.unshift(@@all_items[index])
    end

    lines
  end

  def self.verse(num)
    lines = lines_for_verse(num)
    last_item = lines.first[3..-2]

    verse = "Je te plumerai #{last_item}.\nJe te plumerai #{last_item}.\n"

    lines.each do |line|
      2.times { verse += line + "\n" }
    end

    verse += "Alouette!\nAlouette!\nA-a-a-ah"
  end

  def self.sing
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai.\n"
    song = refrain + "\n"

    (@@all_items.length).times do |i|
      song += verse(i) + "\n\n" + refrain + "\n"
    end

    song.strip
  end

end
