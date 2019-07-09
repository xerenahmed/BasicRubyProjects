#encoding UTF-8
# Coding by Eren A. Akyol <https://github.com/eren5960>
# 09/07/2019 13:43

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
        return -1
    end
end

loop do
    puts ""
    print "Sayı 1: "
    sayi1 = gets.chomp.to_i
    print "Sayı 2: "
    sayi2 = gets.chomp.to_i

    puts "", "---- Yapılacak İşlem ----"
    puts "01 » Toplama"
    puts "02 » Çıkarma"
    puts "03 » Çarpma"
    puts "04 » Bölme"
    puts "05 » Yüzde"
    puts ""

    loop do
        print "İşlem Numarası: "
        i = gets.chomp.to_i
        if (i > 5) then
            puts "[X] Var olan bir işlem numarası girin!"
        else
            print  "Sonuç: ", action(sayi1, sayi2, i)
            puts ""
            break
        end
    end
    
    print "Tekrar? [y/n]: "
    a = gets.chomp
    if(a != "y") then
        break
    end
end