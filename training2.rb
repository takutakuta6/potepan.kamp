# 島までの距離を2000m
# 泳ぎ方を４種類、速度（m/分）を表示
# 数字で泳ぎ方を選択したら、何分かかるか表示

distance = 2000.0
swimmings = [
  { type: "クロール", speed: 35 },
  { type: "平泳ぎ", speed: 25 },
  { type: "背泳ぎ", speed: 29 },
  { type: "バタフライ", speed: 31 },
]

# 泳ぎ方の一覧表示
swimmings.each.with_index(1) do |swim, i|
  puts "#{i}. #{swim[:type]} (速度#{swim[:speed]}m/分)"
end

# 泳ぎ方を選択
print "泳ぎ方を選択 > "
swim_num = gets.to_i
selected_swim = swimmings[swim_num - 1]

puts "泳ぎ方は#{selected_swim[:type]}ですね。
      島までの距離は2000mなので#{(distance / selected_swim[:speed]).round}分かかります。"
