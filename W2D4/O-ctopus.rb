fish =
  ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish',
  'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

#find the longest fish in O(n^2) time.
def sluggish(fish)
  fish.each_with_index do |fish1, idx|
    max_length = true

    fish.each_with_index do |fish2, idx2|
      next if idx1 == idx2
      max_length = false if fish2.length > fish1.length
    end

    return fish1 if max_length
  end
end

#find the longest fish in O(n log n) time.
class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |a, b| a <=> b }
    return self if size <= 1

    mid = length / 2
    left = take(mid).merge_sort(&prc)
    right = drop(mid).merge_sort(&prc)

    Array.merge(left, right, &prc)
  end

  def merge(left, right, &prc)
    merged = []
    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end
    merged += left + right
  end
end 
def dominant_fish(fish)
  prc = Proc.new { |a, b| a.length <=> b.length }
  fishes.merge_sort(&prc)[0]
end

#find the longest fish in O(n) time.
def clever_octopus(fish)
  biggest_fish = fish.first

  fish.each do |fish|
    if fish.length > biggest_fish.length
      biggest_fish = fish
    end
  end
  biggest_fish
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

#Given a tile direction, iterate through a tiles array to return the
#tentacle number (tile index) the octopus must move. This should take
#O(n) time.
def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |tile, idx|
    return idx if title == direction
  end
end

#Now that the octopus is warmed up, let's help her dance faster.
#Use a different data structure and write a new function so that
# you can access the tentacle number in O(1) time.

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def constant_dance(direction, tiles_hash)
  tiles_hash[direction]
end
