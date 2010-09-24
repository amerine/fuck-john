import brl.blitz
import brl.appstub
import brl.audio
import brl.bank
import brl.bankstream
import brl.basic
import brl.bmploader
import brl.d3d7max2d
import brl.d3d9max2d
import brl.data
import brl.directsoundaudio
import brl.dxgraphics
import brl.event
import brl.eventqueue
import brl.font
import brl.freeaudioaudio
import brl.freetypefont
import brl.glgraphics
import brl.glmax2d
import brl.gnet
import brl.jpgloader
import brl.map
import brl.maxlua
import brl.maxutil
import brl.oggloader
import brl.openalaudio
import brl.pngloader
import brl.retro
import brl.tgaloader
import brl.threads
import brl.timer
import brl.wavloader
import pub.freejoy
import pub.freeprocess
import pub.glew
import pub.macos
import pub.win32
Particle^brl.blitz.Object{
ParticleList:brl.linkedlist.TList&=mem:p("_bb_Particle_ParticleList")
Gravity#&=mem:f("_bb_Particle_Gravity")
.x#&
.y#&
.xs#&
.ys#&
.r#&
.g#&
.b#&
-New%()="_bb_Particle_New"
-Delete%()="_bb_Particle_Delete"
+Create:Particle(x%,y%)="_bb_Particle_Create"
+UpdateAll%()="_bb_Particle_UpdateAll"
}="bb_Particle"
