extends Node


var learnedSkills = []

# tähä skilli, kuten, nimi, dmg yms

func LearnSkill(name : String):
	if DataImport.skill_data.has(name):
		learnedSkills.append( DataImport.skill_data[name].duplicate(true) )
	else:
		print("failed to load skill, not found: " + name)

func LoadAllSkills():
	for n in DataImport.skill_data:
		learnedSkills.append(DataImport.skill_data[n].duplicate(true))
