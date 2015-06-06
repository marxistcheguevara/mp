# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cities = [
    "Bakı",
    "Sumqayıt",
    "Gəncə",
    "Mingəçevir",
    "Şirvan",
    "Şəki",
    "Xankəndi",
    "Yevlax",
    "Lənkəran",
    "Naftalan",
    "Şuşa",
	"Abşeron", 
	"Ağdam",  
    "Ağdaş",
    "Ağcabədi",
    "Ağstafa",
    "Ağsu",
    "Astara",
    "Babək",
    "Balakən",
    "Bərdə",
    "Beyləqan",
    "Biləsuvar",
    "Cəbrayıl",
    "Cəlilabad",
    "Culfa",
    "Daşkəsən",
    "Füzuli",
    "Gədəbəy",
    "Goranboy",
    "Göyçay",
    "Göygöl",
    "Hacıqabul",
    "Xaçmaz",
    "Xızı",
    "Xocalı", 
    
    "Xocavənd",
    "İmişli",
    "İsmayıllı",
    "Kəlbəcər",
    "Kəngərli",
    "Kürdəmir",
    "Qəbələ",
    "Qax",
    "Qazax",
    "Qobustan",
    "Quba",
    "Qubadlı",
    "Qusar",
    "Laçın",
    
    "Lerik",
    "Masallı",
    "Neftçala",
    "Oğuz",
    "Ordubad",
    "Saatlı",
    "Sabirabad",
    "Sədərək",
    "Salyan",
    "Samux",
    "Şabran",
    "Şahbuz",
    
    "Şamaxı",
    "Şəmkir",
    "Şərur",
    
    "Siyəzən",
    "Tərtər",
    "Tovuz",
    "Ucar",
    "Yardımlı",
    
    "Zəngilan",
    "Zaqatala",
    "Zərdab"]
    
 cities.each do |city|
 	City.create(name: city)
 end
 	
