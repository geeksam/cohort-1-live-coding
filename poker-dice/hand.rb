class Hand
  def initialize(dice = [])
    @dice = dice
  end

  def face_values
    @dice.map {|e| e.face_value }
  end

  def rank
    counts = Hash.new(0)
    face_values.each do |face|
      counts[face] += 1
    end

    case
    when counts.values.include?(5) ; 'Five of a kind'
    else                           ; 'Bupkis'
    end
  end
end
