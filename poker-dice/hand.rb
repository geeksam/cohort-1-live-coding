class Hand
  def initialize(dice = [])
    @dice = dice
  end

  def face_values
    @dice.map {|e| e.face_value }
  end
end
