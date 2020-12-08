# encoding: utf-8

shop_name = "いらっしゃいませ!「沖縄ラーメン 拓郎」へ!"
puts "#{shop_name}
今日の絶品メニューです!"
puts "----------------------"
noodles = [
  { menu: "こってりラーメン", price: 500 },
  { menu: "味噌バターラーメン", price: 600 },
  { menu: "二郎ラーメン", price: 800 },
  { menu: "チャーシューメン", price: 1000 },
  { menu: "餃子", price: 300 },
]

#　メニューの一覧表示
noodles.each.with_index(1) do |noodle, i|
  puts "#{i}. #{noodle[:menu]} :(¥#{noodle[:price]})"
end

puts "----------------------"

# メニューの選択
print "メニューを選択してください > "
while true
  noodle_num = gets.to_i
  break if noodle_num >= 1 && noodle_num <= 5
  print "もう一度入力してください > "
end
select_noodles = noodles[noodle_num - 1]

# 個数
puts "#{select_noodles[:menu]}ですね。"
print "幾つご注文でしょうか？ > "
menu_num = gets.to_i

# 注文数
puts "#{menu_num}つご注文ですね。ありがとうございます。"

total_price = select_noodles[:price] * menu_num
puts "----------------------"

# 他にご注文はありますか？
print "他にご注文はございますか？ラーメンと餃子をご注文した場合200円割引きとなります。
ご一緒にいかがでしょうか？ > "
other_order = gets.to_i

# 合計金額
if other_order != 0
  while true
    break if other_order >= 1 && other_order <= 5
    print "もう一度入力してください > "
    other_order = gets.to_i
  end
  select_others = noodles[other_order - 1]
  puts "#{select_others[:menu]}ですね。"
  print "幾つご注文でしょうか？ > "
  other_num = gets.to_i
  puts "#{other_num}つご注文ですね。ありがとうございます。"
  if other_order == 5
    puts "ラーメンと餃子のご注文のお客様は✖200円引きとなります"
    discount_price = ([menu_num, other_num].min * 200)
    total_price += ((select_others[:price] * other_num) - discount_price)
  else
    total_price += select_others[:price] * other_num
  end
end
puts "合計金額は¥#{total_price}円となります。"
