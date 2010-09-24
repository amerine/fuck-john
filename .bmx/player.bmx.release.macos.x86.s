	.reference	___bb_appstub_appstub
	.reference	___bb_audio_audio
	.reference	___bb_bank_bank
	.reference	___bb_bankstream_bankstream
	.reference	___bb_basic_basic
	.reference	___bb_blitz_blitz
	.reference	___bb_bmploader_bmploader
	.reference	___bb_d3d7max2d_d3d7max2d
	.reference	___bb_d3d9max2d_d3d9max2d
	.reference	___bb_data_data
	.reference	___bb_directsoundaudio_directsoundaudio
	.reference	___bb_dxgraphics_dxgraphics
	.reference	___bb_event_event
	.reference	___bb_eventqueue_eventqueue
	.reference	___bb_font_font
	.reference	___bb_freeaudioaudio_freeaudioaudio
	.reference	___bb_freejoy_freejoy
	.reference	___bb_freeprocess_freeprocess
	.reference	___bb_freetypefont_freetypefont
	.reference	___bb_glew_glew
	.reference	___bb_glgraphics_glgraphics
	.reference	___bb_glmax2d_glmax2d
	.reference	___bb_gnet_gnet
	.reference	___bb_jpgloader_jpgloader
	.reference	___bb_macos_macos
	.reference	___bb_map_map
	.reference	___bb_maxlua_maxlua
	.reference	___bb_maxutil_maxutil
	.reference	___bb_oggloader_oggloader
	.reference	___bb_openalaudio_openalaudio
	.reference	___bb_pngloader_pngloader
	.reference	___bb_retro_retro
	.reference	___bb_tgaloader_tgaloader
	.reference	___bb_threads_threads
	.reference	___bb_timer_timer
	.reference	___bb_wavloader_wavloader
	.reference	___bb_win32_win32
	.reference	_bbObjectClass
	.reference	_bbObjectCompare
	.reference	_bbObjectCtor
	.reference	_bbObjectFree
	.reference	_bbObjectNew
	.reference	_bbObjectRegisterType
	.reference	_bbObjectReserved
	.reference	_bbObjectSendMessage
	.reference	_bbObjectToString
	.globl	___bb_fuck_john_player
	.globl	__bb_Player_Create
	.globl	__bb_Player_Delete
	.globl	__bb_Player_New
	.globl	_bb_Player
	.text	
___bb_fuck_john_player:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	cmpl	$0,_28
	je	_29
	mov	$0,%eax
	mov	%ebp,%esp
	pop	%ebp
	ret
_29:
	movl	$1,_28
	call	___bb_blitz_blitz
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_bank_bank
	call	___bb_bankstream_bankstream
	call	___bb_basic_basic
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_d3d9max2d_d3d9max2d
	call	___bb_data_data
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_dxgraphics_dxgraphics
	call	___bb_event_event
	call	___bb_eventqueue_eventqueue
	call	___bb_font_font
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_glgraphics_glgraphics
	call	___bb_glmax2d_glmax2d
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_map_map
	call	___bb_maxlua_maxlua
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_retro_retro
	call	___bb_tgaloader_tgaloader
	call	___bb_threads_threads
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	call	___bb_win32_win32
	movl	$_bb_Player,(%esp)
	call	_bbObjectRegisterType
	mov	$0,%eax
	jmp	_18
_18:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Player_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_Player,(%ebx)
	movl	$0,8(%ebx)
	movl	$0,12(%ebx)
	movl	$3,16(%ebx)
	mov	$0,%eax
	jmp	_21
_21:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Player_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_24:
	mov	$0,%eax
	jmp	_30
_30:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Player_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	$_bb_Player,(%esp)
	call	_bbObjectNew
	movl	$0,8(%eax)
	jmp	_26
_26:
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_28:
	.long	0
_8:
	.asciz	"Player"
_9:
	.asciz	"score"
_10:
	.asciz	"i"
_11:
	.asciz	"bonusmencnt"
_12:
	.asciz	"bullets"
_13:
	.asciz	"New"
_14:
	.asciz	"()i"
_15:
	.asciz	"Delete"
_16:
	.asciz	"Create"
_17:
	.asciz	"():Player"
	.align	4
_7:
	.long	2
	.long	_8
	.long	3
	.long	_9
	.long	_10
	.long	8
	.long	3
	.long	_11
	.long	_10
	.long	12
	.long	3
	.long	_12
	.long	_10
	.long	16
	.long	6
	.long	_13
	.long	_14
	.long	16
	.long	6
	.long	_15
	.long	_14
	.long	20
	.long	7
	.long	_16
	.long	_17
	.long	48
	.long	0
	.align	4
_bb_Player:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_7
	.long	20
	.long	__bb_Player_New
	.long	__bb_Player_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Player_Create
