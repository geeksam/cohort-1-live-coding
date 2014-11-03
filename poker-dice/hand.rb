class Hand
  def initialize(dice = [])
    @dice = dice
  end

  def face_values
    @dice.map {|e| e.face_value }
  end

  def rank
    faces = face_values.join

    case faces
    when /([9TJQKA])\1{4}/ ; 'Five of a kind'
    else                   ; 'Bupkis'
    end
  end
end
