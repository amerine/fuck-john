Import "particle.bmx"

AppTitle = "Fuck You John"

Incbin "media/background.png"
Incbin "media/crosshair.png"
Incbin "media/blast.wav"

Global ScreenWidth = 1024
Global ScreenHeight = 768
Global ScreenWidthMid = ScreenWidth/2
Global ScreenHeightMid = ScreenHeight/2


Global media_background:TImage
Global media_crosshair:TImage
Global sound_blast:TSound

Graphics ScreenWidth,ScreenHeight,0,60,GRAPHICS_BACKBUFFER
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
	
	Flip
Wend

While Not KeyDown(KEY_ESCAPE)
  Cls

  	DrawLevel()
	DrawMouse()
	
	PlayerInput()
	
  Flip
Wend
End


Function LoadMedia()
	SetMaskColor 211,20,200
	AutoMidHandle True
	media_crosshair  = LoadImage("incbin::media/crosshair.png")
	media_background = LoadImage("incbin::media/background.png")
	
	sound_blast = LoadSound("incbin::media/blast.wav")
EndFunction

Function DrawLevel()
SetBlend SOLIDBLEND
  SetColor 255,255,255
  SetScale 1,1
	DrawImage media_background,ScreenWidthMid,ScreenHeightMid
EndFunction

Function DrawMouse()
	SetBlend MASKBLEND
	DrawImage media_crosshair, MouseX(), MouseY()
EndFunction

Function PlayerInput()
	If MouseHit(1)
		SetClsColor 255,255,255
		Cls
		SetClsColor 0,0,0
		PlaySound sound_blast
	EndIf
EndFunction