Import "particle.bmx"
Import "player.bmx"

AppTitle = "Fuck You John"

Incbin "media/background.png"
Incbin "media/crosshair.png"
Incbin "media/score_box.png"
Incbin "media/cloud-2.png"
Incbin "media/blast.wav"
Incbin "media/start_game.wav"

Global ScreenWidth = 1024
Global ScreenHeight = 768
Global ScreenWidthMid = ScreenWidth/2
Global ScreenHeightMid = ScreenHeight/2


Global media_background:TImage
Global media_crosshair:TImage
Global media_score_box:TImage
Global media_cloud:TImage
Global sound_blast:TSound
Global sound_start_music:TSound

Global MainPlayer:Player

Global CloudList:TList  = New TList

MainPlayer = Player.Create()

Graphics ScreenWidth,ScreenHeight,0,60,GRAPHICS_BACKBUFFER
SetMaskColor 211,20,200
HideMouse
AutoImageFlags MASKEDIMAGE|FILTEREDIMAGE|MIPMAPPEDIMAGE

LoadMedia()
t$="***** FUCK YOU JOHN BARRY *****"
t2$="This is a a game just for you"
w=TextWidth(t)
h=TextHeight(t)

w2=TextWidth(t2)
h2=TextWidth(t2)

r#=0

start_music=CueSound(sound_start_music)
ResumeChannel start_music

'"TITLE" screen for JOHN
While Not KeyHit(KEY_SPACE)

	Cls
		
	r:+2
	SetOrigin 512,384
	SetHandle w/2,h/2
	SetTransform r,2,5

	SetColor 0,0,255
	DrawRect 0,0,w,h
	SetColor 255,255,255
	DrawText t,0,0
	
	SetOrigin 512,460
	DrawText t2,0,0

	SetOrigin 0,0
	SetHandle 0,0	
	SetTransform 0,1,1
	
	If Rand (100) > 50
		p:Particle = Particle.Create (ScreenWidthMid, 0)
		p:Particle = Particle.Create (GraphicsWidth()/4, 0)
		p:Particle = Particle.Create (((ScreenWidthMid) + GraphicsWidth()/4), 0)
	EndIf

	Particle.UpdateAll ()
	
	SetTransform 0,1.5,1.5
	DrawText "Press Space to Continue", 370,720
	SetTransform 0,1,1
	
	Flip
Wend

FlushMouse()
StopChannel start_music

SetupClouds()

While Not KeyDown(KEY_ESCAPE)
  Cls
  	DrawLevel()
	DrawObjects()
	DrawMouse()
	
	PlayerInput()
	DrawScore()
	
  Flip
Wend
End


Function LoadMedia()
	AutoMidHandle True
	media_crosshair  = LoadImage("incbin::media/crosshair.png",-1)
	media_background = LoadImage("incbin::media/background.png")
	media_score_box  = LoadImage("incbin::media/score_box.png", -1)
	media_cloud      = LoadImage("incbin::media/cloud-2.png", -1)
	
	sound_blast = LoadSound("incbin::media/blast.wav")
	sound_start_music = LoadSound("incbin::media/start_game.wav", SOUND_LOOP)
EndFunction

Function DrawLevel()
  'SetBlend SOLIDBLEND
  SetColor 255,255,255
  SetScale 1,1
  DrawImage media_background,ScreenWidthMid,ScreenHeightMid
	'SetBlend MASKBLEND
	DrawImage media_score_box, 890,738
EndFunction

Function DrawMouse()
	DrawImage media_crosshair, MouseX(), MouseY()
EndFunction

Function PlayerInput()
	If MouseHit(1)
		SetClsColor 255,255,255
		Cls
		SetClsColor 0,0,0
		If MainPlayer.bullets > 0
			PlaySound sound_blast
			MainPlayer.score = MainPlayer.score + 100
			MainPlayer.bullets = MainPlayer.bullets - 1
		EndIf	
	EndIf
	
	If MouseHit(2)
		MainPlayer.bullets = 3
	EndIf
EndFunction

Function DrawScore()
	SetTransform 0,2,2
	DrawText "SCORE: " + MainPlayer.score,770,725
EndFunction

Function DrawObjects()
	Local c:Cloud
	For c=EachIn CloudList
		c.Update()
	Next
	
	For c=EachIn CloudList
		c.Draw()
	Next
EndFunction

Function SetupClouds()
	SeedRnd MilliSecs()
	Local a
	For a=0 Until Rand(1,7)
  		cloud.Create( Rand(-1000,0), Rand(340) )
	Next
EndFunction


''''TYPES''''
Type Cloud
	Field x#,y#,scale#

	Method Update()
		x:+RndFloat()
		'y:+RndFloat()
		If x>(ScreenWidth + 200) x=Rand(-600,0)
  EndMethod

  Method Draw()
		SetScale scale,scale
    DrawImage media_cloud,x,y
		SetScale 1,1
  EndMethod


  Function Create:Cloud( x#, y# )
		Local c:Cloud = New Cloud
		c.x= x
		c.y= y
		c.scale = (Rand(0.5,1.7))
		CloudList.AddLast c
		Return c
	EndFunction
EndType
