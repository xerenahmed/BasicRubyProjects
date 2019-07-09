#encoding: UTF-8
# Coding by Eren A. Akyol <https://github.com/eren5960>
# 09/07/2019 13:43
require 'ruby_figlet'
require 'colorize'

def action(sayi1, sayi2, i)
    case i
    when 1
        sayi1 + sayi2
    when 2
        sayi1 - sayi2
    when 3
        sayi1 * sayi2
    when 4
        sayi1.to_f / sayi2
    when 5
        "#{(sayi2 * 100).fdiv(sayi1)}%"
    else
        -1
    end
end
fonts = ["Fire Font-k", "Merlin1", "Merlin2", "Reserve", "Small Caps", "Soft", "Spliff"]
bp = RubyFiglet::Figlet.new "Eren5960", fonts[rand(0..6)]
puts bp.to_s.colorize(:color => :red, :background => :black)
loop do
    puts ""
    print "Sayı 1: ".light_magenta
    sayi1 = gets.chomp.to_i
    print "Sayı 2: ".light_magenta
    sayi2 = gets.chomp.to_i

    puts "", "---- Yapılacak İşlem ----".light_green
    puts "01 » Toplama".yellow
    puts "02 » Çıkarma".yellow
    puts "03 » Çarpma".yellow
    puts "04 » Bölme".yellow
    puts "05 » Yüzde".yellow
    puts ""

    loop do
        print "İşlem Numarası: ".yellow
        i = gets.chomp.to_i
        if (i > 5) then
            puts "[X] Var olan bir işlem numarası girin!".red
        else
            print  "Sonuç: ".colorize(:color => :light_blue, :background => :gray), action(sayi1, sayi2, i)
            puts ""
            break
        end
    end
    
    print "Tekrar? [y/n]: ".green
    a = gets.chomp
    if(a != "y") then
        break
    end
end