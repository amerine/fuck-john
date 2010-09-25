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
	.reference	_bbNullObject
	.reference	_bbObjectClass
	.reference	_bbObjectCompare
	.reference	_bbObjectCtor
	.reference	_bbObjectFree
	.reference	_bbObjectNew
	.reference	_bbObjectRegisterType
	.reference	_bbObjectReserved
	.reference	_bbObjectSendMessage
	.reference	_bbObjectToString
	.reference	_bbOnDebugEnterScope
	.reference	_bbOnDebugEnterStm
	.reference	_bbOnDebugLeaveScope
	.reference	_brl_blitz_NullObjectError
	.globl	___bb_fuck_john_player
	.globl	__bb_Player_Create
	.globl	__bb_Player_Delete
	.globl	__bb_Player_New
	.globl	_bb_Player
	.text	
___bb_fuck_john_player:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	cmpl	$0,_33
	je	_34
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_34:
	movl	$1,_33
	movl	%ebp,4(%esp)
	movl	$_31,(%esp)
	calll	*_bbOnDebugEnterScope
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
	mov	$0,%ebx
	jmp	_21
_21:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Player_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_35,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_Player,(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	$0,12(%eax)
	movl	-4(%ebp),%eax
	movl	$3,16(%eax)
	movl	-4(%ebp),%eax
	movl	$1,20(%eax)
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	mov	$0,%ebx
	jmp	_24
_24:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Player_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_27:
	mov	$0,%eax
	jmp	_38
_38:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Player_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	$_bbNullObject,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_47,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_39,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Player,(%esp)
	call	_bbObjectNew
	movl	%eax,-4(%ebp)
	movl	$_42,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_44
	call	_brl_blitz_NullObjectError
_44:
	movl	$0,8(%ebx)
	movl	$_46,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	jmp	_29
_29:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_33:
	.long	0
_32:
	.asciz	"player"
	.align	4
_31:
	.long	1
	.long	_32
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
	.asciz	"current_level"
_14:
	.asciz	"kills"
_15:
	.asciz	"currently_killing"
_16:
	.asciz	"New"
_17:
	.asciz	"()i"
_18:
	.asciz	"Delete"
_19:
	.asciz	"Create"
_20:
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
	.long	3
	.long	_13
	.long	_10
	.long	20
	.long	3
	.long	_14
	.long	_10
	.long	24
	.long	3
	.long	_15
	.long	_10
	.long	28
	.long	6
	.long	_16
	.long	_17
	.long	16
	.long	6
	.long	_18
	.long	_17
	.long	20
	.long	7
	.long	_19
	.long	_20
	.long	48
	.long	0
	.align	4
_bb_Player:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_7
	.long	32
	.long	__bb_Player_New
	.long	__bb_Player_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Player_Create
_36:
	.asciz	"Self"
_37:
	.asciz	":Player"
	.align	4
_35:
	.long	1
	.long	_16
	.long	2
	.long	_36
	.long	_37
	.long	-4
	.long	0
_48:
	.asciz	"p"
	.align	4
_47:
	.long	1
	.long	_19
	.long	2
	.long	_48
	.long	_37
	.long	-4
	.long	0
_40:
	.asciz	"/Users/mturner/code/bullshit/fuck-john/player.bmx"
	.align	4
_39:
	.long	_40
	.long	10
	.long	3
	.align	4
_42:
	.long	_40
	.long	11
	.long	3
	.align	4
_46:
	.long	_40
	.long	12
	.long	3
