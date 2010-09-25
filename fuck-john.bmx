Rem
A wonderful twist on the classic game for the enjoyment of John Barry
EndRem 

Import "player.bmx"

AppTitle = "Fuck You John"

Incbin "media/background.png"
Incbin "media/crosshair.png"
Incbin "media/score_box.png"
Incbin "media/cloud-2.png"
Incbin "media/jbarry.png"
Incbin "media/flying-john.png"
Incbin "media/purple_d.png"

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
Global media_jbarry_mug:TImage
Global media_purple_d:TImage
Global media_flying_john:TImage

Global sound_blast:TSound
Global sound_start_music:TSound

Global MainPlayer:Player

Global JBarry_rotation:Float=0.0

Global CloudList:TList  = New TList
Global BaddieList:TList = New TList


Global GameTimer= CreateTimer( 40 )

MainPlayer = Player.Create()


'Game Vars
Global max_levels = 10

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

tim#=0

start_music=CueSound(sound_start_music)
ResumeChannel start_music

'"TITLE" screen for JOHN
While Not KeyHit(KEY_SPACE)
	tim :+ 2

	Cls
	
	If Rand (100) > 75
		p:Particle = Particle.Create (ScreenWidthMid, 0, media_purple_d)
		p:Particle = Particle.Create (GraphicsWidth()/4, 0, media_purple_d)
		p:Particle = Particle.Create (((ScreenWidthMid) + GraphicsWidth()/4), 0, media_purple_d)
	EndIf

	Particle.UpdateAll ()
	
	
	SetScale 1.5+1*Cos(tim), 1.5+1*Cos(tim)
	SetRotation jbarry_rotation
	SetColor 255,255,255
	DrawImage media_jbarry_mug,ScreenWidthMid/2,ScreenHeightMid
	SetRotation 0.0
	JBarry_rotation :+ 5
	If JBarry_rotation>360 Then JBarryRotation=0.0
		
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
	SetupBaddies()
  	DrawLevel()
	DrawObjects()
	PlayerInput()
	DrawScore()
	DrawMouse()
	WaitTimer GameTimer
  Flip
Wend
End


Function LoadMedia()
	AutoMidHandle True
	media_crosshair  = LoadImage("incbin::media/crosshair.png",-1)
	media_background = LoadImage("incbin::media/background.png")
	media_score_box  = LoadImage("incbin::media/score_box.png", -1)
	media_cloud      = LoadImage("incbin::media/cloud-2.png", -1)
	media_jbarry_mug = LoadImage("incbin::media/jbarry.png", -1)
	media_purple_d   = LoadImage("incbin::media/purple_d.png", -1)
	media_flying_john = LoadAnimImage("incbin::media/flying-john.png", 165, 100, 0, 4)
	
	sound_blast = LoadSound("incbin::media/blast.wav")
	sound_start_music = LoadSound("incbin::media/start_game.wav", SOUND_LOOP)
EndFunction

Function SetupBaddies()
	If MainPlayer.kills < MainPlayer.current_level
		If MainPlayer.currently_killing = False
			For b=1 To MainPlayer.current_level
				baddie.Create(Rand(100,ScreenWidth-100),Rand(100, ScreenHeight-100),media_flying_john,4)
			Next
			MainPlayer.currently_killing = True
		EndIf
	EndIf
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
	SetScale .5,.5
	DrawImage media_crosshair, MouseX(), MouseY()
	SetScale 1,1
EndFunction

Function PlayerInput()
	ResetCollisions
	If MouseHit(1)
		SetClsColor 255,255,255
		SetClsColor 0,0,0
		If MainPlayer.bullets > 0
			SetClsColor 255,255,255
			Cls
			SetClsColor 0,0,0
			PlaySound sound_blast
			Local b:Baddie
			For b=EachIn BaddieList
				If ImagesCollide2(b.image, b.x, b.y, b.frame,0,.7,.7,media_crosshair, MouseX(), MouseY(),0,0,.5,.5)
					MainPlayer.kills:+1
					MainPlayer.score = MainPlayer.score + 100
					BaddieList.remove(b)
				EndIf
			Next
			MainPlayer.bullets = MainPlayer.bullets - 1
		EndIf	
	EndIf
	
	If MouseHit(2)
		MainPlayer.bullets = 3
	EndIf
	
	If MainPlayer.kills = MainPlayer.current_level
		ChangeLevel()
	EndIf
EndFunction

Function DrawScore()
	SetTransform 0,2,2
	DrawText "LEVEL: " + MainPlayer.current_level, 250, 725
	DrawText "SCORE: " + MainPlayer.score,770,725
	
	For k=1 To MainPlayer.bullets
		DrawText "*", 10+(k*20),725
	Next
EndFunction

Function ChangeLevel()
	MainPlayer.kills = 0
	MainPlayer.current_level:+1
	MainPlayer.currently_killing = False
	SetupBaddies()
EndFunction

Function DrawObjects()
	Local c:Cloud
	For c=EachIn CloudList
		c.Update()
	Next
	
	For c=EachIn CloudList
		c.Draw()
	Next
	
	Local b:Baddie
	For b=EachIn BaddieList
		b.Update()
	Next
	
	For b=EachIn BaddieList
		b.Draw()
	Next
EndFunction

Function SetupClouds()
	SeedRnd MilliSecs()
	Local a
	For a=0 Until Rand(3,7)
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

Type Baddie
	Field x#,y#,frame#,total_frames#
	Field image:TImage
	Field dir# = 1
	
	Method Update()
		If frame = total_frames-1 Then dir = -1
		If frame = 0 Then dir = 1
		frame:+dir
	EndMethod
	
	Method Draw()
		SetScale .7,.7
		DrawImage image, x, y, frame
		CollideImage image, x, y, 0, 0, 1
		SetScale 1,1
	EndMethod
	
	Function Create:Baddie(x#,y#,image:TImage,frames#)
		Local b:Baddie = New Baddie
		b.x= x
		b.y= y
		b.frame = 0
		b.image = image
		b.total_frames = frames
		BaddieList.AddLast b
		Return b
	EndFunction
EndType


Type Particle
	Global ParticleList:TList ' The list for all objects of this type...
	Global Gravity# = 0.1

	Field x#
	Field y#
	Field xs#
	Field ys#
	Field r#,g#,b#
	
	Field rotation:Float
	
	Field image:TImage

	' The New method is called whenever one of these objects is created. If
	' the list hasn't yet been created, it's created here. The object is then
	' added to the list...

	Method New ()
		If ParticleList = Null
			ParticleList = New TList
		EndIf
		ParticleList.AddLast Self
	End Method

	Function Create:Particle (x, y, image:TImage)
		p:Particle = New Particle
		p.x = x
		p.y = y
		p.image = image
		p.rotation = Rand(0,360)
		p.xs = Rnd (-4, 4)
		p.ys = 0
		p.r = Rand(255)
		p.g = Rand(255)
		p.b = Rand(255)
		Return p
	End Function

	Function UpdateAll ()
		' Better check the list exists before trying to use it...
		If ParticleList = Null Return
			' Iterate through list...
			For p:Particle = EachIn ParticleList
				p.ys = p.ys + Gravity
				p.x = p.x + p.xs
				p.y = p.y + p.ys
				SetColor(p.r,p.g,p.b)
				'DrawRect p.x, p.y, 8, 8
				SetColor 255,255,255
				SetScale 0.1,0.1
				SetRotation p.rotation
				DrawImage(p.image, p.x, p.y)
				SetRotation 0.0
				p.rotation :+ 5
				If p.rotation>360 Then p.rotation=0.0
				If p.y > GraphicsHeight () p = Null
			Next
		End Function
End Type
