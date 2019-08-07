# Coded by Eren A. Akyol
# Pyramid Algorithm (07.07.2019 12:43)

class String
  def pyramid
    new_text = ""
    count = self.length - 1
    for index in 0..count
      new_text += self[0..index] + "\n"
    end

    while count > 0 do
      count -= 1
      new_text += self[0..count] + "\n"
    end
    new_text
  end
end
