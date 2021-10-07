tiles_in_level = [2304, 576, 144, 36, 9, 4, 1]
cols_in_level = [48, 24, 12, 6, 3, 2, 1]

cur = 6
level = "level#{cur}"
total_tiles = tiles_in_level[cur]
tiles_per_column = cols_in_level[cur]

n = 0
row = 0
column = 0
(n...total_tiles).each do |i|
  filename = "layers/#{level}/tile-#{i}.jpg" # current filename
  target = "layers/#{level}/map_#{column}_#{row}.jpg" # new filename

  puts "copy #{filename} to #{target}"

  `cp -f #{filename} #{target}` # rename

  # work out next step
  column = column + 1
  if column >= tiles_per_column
    column = 0
    row = row + 1
  end
end

