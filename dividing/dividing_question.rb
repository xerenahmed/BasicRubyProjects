#!/usr/bin/ruby

# Mode
# 1 = sonucu 12/42 şeklinde verir
# 2 = sonucu 1/4 şeklinde verir
mode = 2

payslice = []
paydaslice = []

# Soruda bizden rakamları farklı istiyor, eğer 11'e tam bölünüyorsa rakamlar aynıdır, 
(10..99).to_a.each do |sayi|
	if sayi % 11 != 0 
		payslice << sayi.to_s
		paydaslice << sayi.to_s
	end
end

result = []

payslice.each do |pay|
	paydaslice.each do |payda|
		pay_result = pay.clone
		payda_result = payda.clone

		pay_ilk_rakam = pay[0]
		pay_ikinci_rakam = pay[1]
		payda_ilk_rakam = payda[0]
		payda_ikinci_rakam = payda[1]

		if payda.include? pay_ilk_rakam or payda.include? pay_ikinci_rakam
			payda_result.gsub! pay_ilk_rakam, ""
			payda_result.gsub! pay_ikinci_rakam, ""
			pay_result.gsub! payda_ilk_rakam, ""
			pay_result.gsub! payda_ikinci_rakam, ""

			# Eğer tüm rakamlar birbirini götürürse boş kalacağı için kontrol et
			unless pay_result.empty? or payda_result.empty?
				# Payda paydan büyük olacak
				if payda_result.to_i > pay_result.to_i
					if mode == 1
						result << pay + "/" + payda
					elsif mode == 2
						result << pay_result + "/" + payda_result unless result.include? pay_result + "/" + payda_result # Eğer aynı sonuç eklenmediyse ekle
					end
				end
			end
		end
	end
end

puts "------ Sonuç -------"
puts "Mod: " + mode.to_s
puts "Toplamda " + result.count.to_s + " değer bulundu."
puts "İçerik: " + result.inspect.to_s + ""

