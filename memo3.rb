require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i 

if memo_type == 1
    
    puts "拡張子を除いたファイルを入力してください。"
    
    file_name = gets.to_s
    
    puts "メモしたい内容を記入してください"
    puts  "終了後、Ctrl + D　を押します。"
    
    memo_type = STDIN.read
    
    CSV.open("#{file_name}.csv","w") do |memo|
        
        memo << ["#{memo_type}"]
        
    end

elsif memo_type == 2
    
    puts "編集したいファイル名を入力してください。"
    
    file_name = gets.chomp 
    
    puts "編集内容を入力してください。"
    puts "終了後、Ctrl + D　を押します。"
    
    memo_type = STDIN.read
    
    CSV.open("#{file_name}.csv", "a") do |memo|
        
        memo << ["#{memo_type}"]
        
    end
    
end