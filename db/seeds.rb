require 'faker'

nb_user = 6

nb_user.times do |i|
	if i%2 == 1
		user = User.create(email: "email#{i+1}@test.com", password: "jetest", donateur: 1, name: Faker::Name.first_name, surname: Faker::Name.last_name)
		Don.create(user_id: user.id, don: rand(1.0..250.0).round(2) )
		puts "Création de l'user N°#{i+1} qui est donateur de #{Don.last.don}"
	else
		User.create(email: "email#{i+1}@test.com", password: "jetest", name: Faker::Name.first_name, surname: Faker::Name.last_name)
		puts "Création de l'user N°#{i+1}"
	end
end

# # # # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # # # #

puts "-"*60
puts "\t----- Création de 68 types de Plante -----"
puts "-"*60

tab_famille = [
	"ASTERACEES", "AMARANTHACEES", "APIACEES", # 0 - 1 - 2
	"AMARYLLIDACEES", # 3
	"BORAGINACEES", "BRASICACEES", # 4 - 5
	"CAPRIFOLIACEES", "CARYOPHILLACEES", # 6 - 7
	"CHENOPODIACEES", "CUCURBITACEES", # 8 - 9
	"ERICACEES", # 10
	"FABACEES", # 11
	"GROSSULARIACEES", # 12
	"LAMIACEES", "LILIACEES", # 13 - 14
	"PAPAVERACEES", "POLYGONACEES", # 15 - 16
	"ROSACEES", # 17
	"SOLANACEES", # 18
	"VITACEES" #  19
]
tab_type = [
	"FLEUR", "FRUIT", # 0 - 1
	"FEUILLE", "RACINE" # 2 - 3
]

Plantae.create(Plante: "AIL", Famille: tab_famille[14], Type: tab_type[3], Img:'ail.png')
Plantae.create(Plante: "ARTICHAUT", Famille: tab_famille[0], Type: tab_type[0], Img:'ail.png')
Plantae.create(Plante: "ASPERGES", Famille: tab_famille[14], Type: tab_type[3], Img:'ail.png')
Plantae.create(Plante: "AUBERGINE", Famille: tab_famille[18], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "BASILIC", Famille: tab_famille[13], Type: tab_type[2], Img:'basilic.jpg')
Plantae.create(Plante: "BETTERAVE", Famille: tab_famille[1], Type: tab_type[3], Img:'betterave.png')
Plantae.create(Plante: "BLETTE", Famille: tab_famille[8], Type: tab_type[2], Img:'blette.png')
Plantae.create(Plante: "BOURRACHE", Famille: tab_famille[4], Type: tab_type[0], Img:'ail.png')
Plantae.create(Plante: "BROCOLI", Famille: tab_famille[5], Type: tab_type[0], Img:'brocoli.png')
Plantae.create(Plante: "CAMOMILLE", Famille: tab_famille[0], Type: tab_type[0], Img:'camomille.png')
Plantae.create(Plante: "CAROTTE", Famille: tab_famille[2], Type: tab_type[3], Img:'carotte.jpg')
Plantae.create(Plante: "CELERI BRANCHES", Famille: tab_famille[2], Type: tab_type[2], Img:'celeri_branch.png')
Plantae.create(Plante: "CELERI RAVE", Famille: tab_famille[2], Type: tab_type[3], Img:'chou-hiver.jpg')
Plantae.create(Plante: "CHOU CHINOIS", Famille: tab_famille[5], Type: tab_type[2], Img:'choux_bruxel.jpg')
Plantae.create(Plante: "CHOU DE BRUXELLES", Famille: tab_famille[5], Type: tab_type[2], Img:'choux_bruxel.jpg')
Plantae.create(Plante: "CHOU FLEUR", Famille: tab_famille[5], Type: tab_type[0], Img:'choux_fleur.png')
Plantae.create(Plante: "CHOU FRISE", Famille: tab_famille[5], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "CHOU POMME", Famille: tab_famille[5], Type: tab_type[0], Img:'ail.png')
Plantae.create(Plante: "CHOU RAVE", Famille: tab_famille[5], Type: tab_type[3], Img:'ail.png')
Plantae.create(Plante: "CIBOULETTE", Famille: tab_famille[14], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "CONCOMBRE", Famille: tab_famille[9], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "CONSOUDE", Famille: tab_famille[4], Type: tab_type[3], Img:'ail.png')
Plantae.create(Plante: "CORIANDRE", Famille: tab_famille[2], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "CORNICHON", Famille: tab_famille[9], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "COSMOS", Famille: tab_famille[0], Type: tab_type[0], Img:'ail.png')
Plantae.create(Plante: "COURGETTE", Famille: tab_famille[9], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "ECHALOTTE", Famille: tab_famille[3], Type: tab_type[3], Img:'ail.png')
Plantae.create(Plante: "ENDIVE", Famille: tab_famille[0], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "ESTRAGON", Famille: tab_famille[0], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "EPINARD", Famille: tab_famille[8], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "FENOUIL", Famille: tab_famille[2], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "FEVE", Famille: tab_famille[11], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "FRAISE", Famille: tab_famille[17], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "FRAMBOISE", Famille: tab_famille[17], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "GROSEILLE", Famille: tab_famille[12], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "HARICOT GRAIN", Famille: tab_famille[11], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "HARICOT VERT", Famille: tab_famille[11], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "HYSOPE", Famille: tab_famille[13], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "LAITUE", Famille: tab_famille[0], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "LAVANDE", Famille: tab_famille[13], Type: tab_type[0], Img:'ail.png')
Plantae.create(Plante: "LUZERNE", Famille: tab_famille[11], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "MACHE", Famille: tab_famille[6], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "MELON", Famille: tab_famille[9], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "MENTHE", Famille: tab_famille[13], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "MOUTARDE", Famille: tab_famille[5], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "MYRTILLE", Famille: tab_famille[10], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "NAVET", Famille: tab_famille[5], Type: tab_type[3], Img:'ail.png')
Plantae.create(Plante: "OEILLET", Famille: tab_famille[7], Type: tab_type[0], Img:'ail.png')
Plantae.create(Plante: "OIGNON", Famille: tab_famille[14], Type: tab_type[3], Img:'ail.png')
Plantae.create(Plante: "ORIGAN", Famille: tab_famille[13], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "PANAIS", Famille: tab_famille[2], Type: tab_type[3], Img:'ail.png')
Plantae.create(Plante: "POMME DE TERRE", Famille: tab_famille[18], Type: tab_type[3], Img:'ail.png')
Plantae.create(Plante: "PATATE DOUCE", Famille: tab_famille[18], Type: tab_type[3], Img:'ail.png')
Plantae.create(Plante: "PAVOT", Famille: tab_famille[15], Type: tab_type[0], Img:'ail.png')
Plantae.create(Plante: "PERSIL", Famille: tab_famille[2], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "POIS", Famille: tab_famille[11], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "PIMENT", Famille: tab_famille[18], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "POIREAU", Famille: tab_famille[14], Type: tab_type[3], Img:'ail.png')
Plantae.create(Plante: "POIVRON", Famille: tab_famille[18], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "POTIRON", Famille: tab_famille[9], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "RADIS", Famille: tab_famille[5], Type: tab_type[3], Img:'ail.png')
Plantae.create(Plante: "RHUBARBE", Famille: tab_famille[2], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "ROQUETTE", Famille: tab_famille[2], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "SALSIFIS", Famille: tab_famille[0], Type: tab_type[3], Img:'ail.png')
Plantae.create(Plante: "THYM", Famille: tab_famille[2], Type: tab_type[2], Img:'ail.png')
Plantae.create(Plante: "TOMATE", Famille: tab_famille[18], Type: tab_type[1], Img:'ail.png')
Plantae.create(Plante: "TOPINAMBOUR", Famille: tab_famille[0], Type: tab_type[3], Img:'ail.png')
Plantae.create(Plante: "VIGNE", Famille: tab_famille[19], Type: tab_type[1], Img:'ail.png')

# # # # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # # ASSOCIATION # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # # # #

tab_plantae = Plantae.all
nb_plantae = Plantae.all.size

# SOURCE:
	# 0 = DECONSEILLER -> "ROUGE"
	# 1 = CONSEILLER -> "VERT"
	# 2 = CONTRADICTOIRE -> "BLEU"
	# nil = PAS D'INFO -> "BLANC"

tab_association_ail = [	0, 2, 0, nil, 1, nil, nil,
						0, nil, 1, nil, nil,
						0, 0, 0, 0, 0, 0,
						nil, nil, 1,
						nil, nil, nil, # 24
						nil, nil, nil,
						nil, nil, nil, # 30
						0, 1, 1, nil, 0, 0, nil, 1, nil, 0, # 40
						nil, nil, nil, 0, nil, 2, nil, 1, # 48
						nil, nil, 2, 2, nil, nil, 0, nil, # 56
						1,	nil, nil, 2, nil, 0, # 62
						nil, nil, 1, nil, nil ] # 67

						tab_association_artichaut = [ 	0, nil, 1, nil, 1, 2, 							# 6
																						nil, nil, 0, nil, 1, nil,						# 12
																						nil, nil, nil, nil, nil, 0,					# 18
																						nil, 2, 1, 1, nil, 1,								# 24
																						nil, 1, 1, nil, nil, nil,						# 30
																						nil, 0, 1, nil, nil, 2, 						# 36
																						2, nil, nil, nil, 0, nil,						# 42
																						nil, nil, 0, nil, 2, nil,						# 48
																						2, nil, nil, 1, 1, nil,							# 54
																						1, 2, nil, 2, nil, nil, 						# 60
																						2, nil, 0, nil, nil, 1,							# 66
																						nil, nil]														# 68

						tab_association_asperge = [ 	1, nil, 1, nil, nil, nil,							# 6
																					nil, nil, nil, nil, nil, nil,					# 12
																					nil, 1, 1, 1, 1, 1,										# 18
																					1, nil, nil, nil, nil, nil,						# 24
																					nil, nil, nil, nil, nil, 1,						# 30
																					nil, nil, 1, nil, nil, nil, 					# 36
																					1, 1, nil, 1, nil, nil,								# 42
																					nil, 1, 1, nil, 1, nil,								# 48
																					nil, nil, nil, nil, nil, nil,					# 54
																					nil, nil, 1, nil, nil, nil, 					# 60
																					nil, nil, 1, 1, nil, 1,								# 66
																					nil, nil, 1, nil, nil, nil,						# 72
																					nil, nil, nil, nil ]									# 76



tab_association_tomate = [ 	1, nil, 1, nil, 1, 0,
														nil, nil, nil, 1, 1, 1,
														1, 2, 2, 2, 2, 2,
														0, 1, 2, nil, nil, 2,
														1, 2, 1, 1, 1, nil,
														0, nil, nil, nil, 1, 2,
														2, nil, 1, nil, nil, 1,
														2 ] # 43

tab_association_patate = [	1, nil, 1, nil, nil, nil,
							nil, nil, nil, 1, nil, 2,
							1, 1, 1, 1, 1, 1, 1, 1,
							0, nil, nil, 0, nil, 0 ]

puts "-"*70
puts "\t----- Création de #{nb_plantae} Associations pour l'Ail -----"
puts "-"*70

# ASSOCIATION POUR 'AIL'
num_assso = 0
((tab_association_ail.size)+1).times do |i|
	if i+1 != Plantae.find_by(Plante: "AIL").id
		Ecosystem.create(plantae_id: i+1, plantae_id2: Plantae.find_by(Plante: "AIL").id, source: tab_association_ail[num_assso])
		num_assso += 1
	end
end

# ASSOCIATION POUR 'ARTICHAUT'
num_assso = 0
((tab_association_artichaut.size)+1).times do |i|
	if i+1 != Plantae.find_by(Plante: "ARTICHAUT").id
		Ecosystem.create(plantae_id: i+1, plantae_id2: Plantae.find_by(Plante: "ARTICHAUT").id, source: tab_association_artichaut[num_assso])
		num_assso += 1
	end
end

# ASSOCIATION de 45 plantes POUR 'tomates'
# SI TON TABLEAU POSSEDE TOUTES LES ASSOCIATIONS
puts "-Création de 45 associations pour les Tomates"
if tab_association_tomate.size == 67
	nb_de_fois = ((tab_association_tomate.size)+1)
# SI TON TABLEAU N'EST PAS REMPLI
else
	nb_de_fois = tab_association_tomate.size
end
num_assso = 0
nb_de_fois.times do |i|
	if i+1 != Plantae.find_by(Plante: "TOMATE").id
		Ecosystem.create(plantae_id: i+1, plantae_id2: Plantae.find_by(Plante: "TOMATE").id, source: tab_association_tomate[num_assso])
		num_assso += 1
	end
end


# ASSOCIATION de 26 plantes POUR 'pomme de terre'
# SI TON TABLEAU POSSEDE TOUTES LES ASSOCIATIONS
puts "-Création de 45 associations pour les Pommes de Terre"
if tab_association_patate.size == 67
	nb_de_fois = ((tab_association_patate.size)+1)
else
# SI TON TABLEAU N'EST PAS REMPLI
	nb_de_fois = tab_association_patate.size
end
num_assso = 0
nb_de_fois.times do |i|
	if i+1 != Plantae.find_by(Plante: "POMME DE TERRE").id
		Ecosystem.create(plantae_id: i+1, plantae_id2: Plantae.find_by(Plante: "POMME DE TERRE").id, source: tab_association_patate[num_assso])
		num_assso += 1
	end
end



tab_some_asssos = [ [nil,0,2,0,nil,1],
					[0,nil,1,nil,nil,nil],
					[2,1,nil,nil,1,2],
					[0,nil,nil,nil,nil,nil],
					[nil,nil,1,nil,nil,nil],
					[1,nil,2,nil,nil,nil],
					[1,nil,0,nil,nil,nil],
					[nil,nil,nil,nil,nil,nil],
					[0,nil,0,nil,1,2],
					[nil,nil,nil,nil,nil,nil],
					[1,nil,1,nil,nil,2],
					[nil,nil,nil,nil,nil,1],
					[nil,nil,nil,nil,nil,1],
					[0,1,nil,nil,1,1],
					[0,1,nil,nil,1,1],
					[0,1,nil,nil,1,2],
					[0,1,nil,nil,1,1],
					[0,1,nil,nil,1,1],
					[nil,1,nil,nil,1,1],
					[1,nil,2,nil,nil,1],
					[nil,nil,1,nil,1,1],
					[1,nil,1,nil,nil,nil],
					[nil,nil,nil,nil,nil,1], #CORIANDRE
					[nil,nil,1,nil,1,1],
					[nil,nil,1,nil,nil,nil],
					[nil,nil,1,nil,1,1],
					[nil,nil,1,nil,nil,nil],
					[nil,nil,1,nil,nil,nil],
					[1,1,nil,nil,nil,0],
					[nil,nil,nil,1,nil,nil],
					[1,nil,nil,1,nil,nil],
					[0,1,0,nil,1,0],
					[1,nil,1,nil,nil,nil],
					[1,nil,nil,1,nil,nil],
					[nil,nil,nil,1,nil,nil], #GROSEILLE
					[0,nil,0,1,nil,0],
					[0,nil,0,1,nil,0],
					[nil,nil,nil,1,nil,nil],
					[1,1,nil,nil,nil,1],
					[nil,nil,nil,1,nil,nil],
					[0,nil,0,nil,nil,nil],
					[nil,nil,nil,1,nil,nil],
					[nil,nil,1,nil,1,1],
					[nil,nil,0,nil,nil,nil],
					[0,nil,0,nil,nil,nil],
					[nil,nil,nil,nil,nil,nil],
					[2,nil,2,nil,nil,nil], #NAVET
					[nil,nil,nil,nil,nil,nil],
					[1,nil,2,0,nil,1],
					[nil,nil,nil,nil,nil,nil],
					[nil,nil,nil,nil,nil,nil],
					[1,nil,1,nil,nil,nil],
					[1,nil,1,nil,nil,nil],
					[nil,nil,nil,nil,nil,nil],
					[1,1,1,nil,nil,nil],
					[0,nil,2,1,nil,nil],
					[2,nil,nil,2,1,0], #PIMENT
					[1,1,1,nil,nil,2],
					[2,nil,nil,2,1,0],
					[nil,nil,1,nil,1,1],
					[2,nil,2,nil,nil,nil],
					[1,nil,nil,nil,nil,nil],
					[0,nil,0,nil,nil,1],
					[0,nil,nil,nil,nil,nil],
					[1,nil,1,nil,1,0],
					[nil,nil,nil,nil,nil,nil],
					[nil,nil,nil,nil,nil,nil] ]
puts "-"*80
puts "---- Pour juste remplir quelques association pour chaque plante :) ----"
puts "-"*80
67.times do |i|
	if i != Plantae.find_by(Plante: "AIL").id || i != Plantae.find_by(Plante: "TOMATE").id || i != Plantae.find_by(Plante: "POMME DE TERRE").id
	# LE IF SERT JUSTE PARCE QUE PLUS HAUT J'AI DEJA BIEN REMLI POUR L'AIL / TOMATE ET POMME DE TERE :) (pas besoin de rajouter les 6 premier du coup ;D)
		Ecosystem.create(plantae_id2: i+1, plantae_id: 1, source: tab_some_asssos[i][0])
		Ecosystem.create(plantae_id2: i+1, plantae_id: 2, source: tab_some_asssos[i][1])
		Ecosystem.create(plantae_id2: i+1, plantae_id: 3, source: tab_some_asssos[i][2])
		Ecosystem.create(plantae_id2: i+1, plantae_id: 4, source: tab_some_asssos[i][3])
		Ecosystem.create(plantae_id2: i+1, plantae_id: 5, source: tab_some_asssos[i][4])
		Ecosystem.create(plantae_id2: i+1, plantae_id: 6, source: tab_some_asssos[i][5])
	end
end



joanne = User.create(email: "jojo@free.fr", password: "tructruc", admin: true, name: "Joanne", surname: "Rabenarisoa")
puts "Utilisateur Joanne créé"
