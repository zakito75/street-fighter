class Player
  attr_reader :name
     attr_accessor :hp
     attr_accessor :force
def initialize name, hp, force
             @name = name
             @hp = hp
             @force = force
end
  def infos
      puts " #{name}-Hp:#{hp}-Force:#{force}"
  end
  def hit10 playervs
      playervs.hp -= 10
  end
  def hit20 playervs #degats bonus
      playervs.hp -= 10
  end
  def rage
      @force += 10
  end
  def shuryoken playervs #attaque special
     playervs.hp -= 40
  end
  def no_rage
      @force -= 10
  end
end
player_1 = Player.new "Ryu", 200, 10
player_2 = Player.new "Ken", 200, 10

20.times do
puts "A Ryu de jouer\n 1-attaquer 2-rentrer en rage 3-attaque special"
choix = gets.chomp.to_i

if choix == 1
  player_1.hit10 player_2
  puts "#{player_1.name} attaque"
  player_2.infos

elsif choix == 2
  player_1.hit20 player_2
  player_1.rage
  puts "#{player_1.name} entre en mode rage"
  puts "#{player_1.infos} Augmentation de la force +10"

elsif choix == 3
  player_1.shuryoken player_2
  player_1.no_rage
  puts "#{player_1.name} effectue un shuryoken"
  puts "#{player_2.infos} est mal en point" 

else
  puts "Mauvais choix"
end  
end
