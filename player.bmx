Type Player
	Field score=000000
	Field bonusmencnt = 0	' keep track of when bonus man is due
	Field bullets = 3
	Field current_level = 1
	Field kills = 0
	Field currently_killing = False

	Function Create:Player()
		Local p:Player = New Player	
		p.score = 0000
		Return p
	EndFunction
	
EndType
