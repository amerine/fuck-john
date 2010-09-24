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
	.reference	_bbFloatToInt
	.reference	_bbGCFree
	.reference	_bbNullObject
	.reference	_bbObjectClass
	.reference	_bbObjectCompare
	.reference	_bbObjectCtor
	.reference	_bbObjectDowncast
	.reference	_bbObjectFree
	.reference	_bbObjectNew
	.reference	_bbObjectRegisterType
	.reference	_bbObjectReserved
	.reference	_bbObjectSendMessage
	.reference	_bbObjectToString
	.reference	_brl_graphics_GraphicsHeight
	.reference	_brl_linkedlist_TList
	.reference	_brl_max2d_DrawRect
	.reference	_brl_max2d_SetColor
	.reference	_brl_random_Rand
	.reference	_brl_random_Rnd
	.globl	___bb_fuck_john_particle
	.globl	__bb_Particle_Create
	.globl	__bb_Particle_Delete
	.globl	__bb_Particle_Gravity
	.globl	__bb_Particle_New
	.globl	__bb_Particle_ParticleList
	.globl	__bb_Particle_UpdateAll
	.globl	_bb_Particle
	.text	
___bb_fuck_john_particle:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	cmpl	$0,_40
	je	_41
	mov	$0,%eax
	mov	%ebp,%esp
	pop	%ebp
	ret
_41:
	movl	$1,_40
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
	movl	$_bb_Particle,(%esp)
	call	_bbObjectRegisterType
	mov	$0,%eax
	jmp	_26
_26:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Particle_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	sub	$16,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_Particle,(%ebx)
	fldz
	fstps	8(%ebx)
	fldz
	fstps	12(%ebx)
	fldz
	fstps	16(%ebx)
	fldz
	fstps	20(%ebx)
	fldz
	fstps	24(%ebx)
	fldz
	fstps	28(%ebx)
	fldz
	fstps	32(%ebx)
	cmpl	$_bbNullObject,__bb_Particle_ParticleList
	jne	_42
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	__bb_Particle_ParticleList,%eax
	decl	4(%eax)
	jnz	_46
	movl	%eax,(%esp)
	call	_bbGCFree
_46:
	movl	%esi,__bb_Particle_ParticleList
_42:
	movl	__bb_Particle_ParticleList,%eax
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*68(%eax)
	mov	$0,%eax
	jmp	_29
_29:
	add	$16,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Particle_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_32:
	mov	$0,%eax
	jmp	_48
_48:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Particle_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	$_bb_Particle,(%esp)
	call	_bbObjectNew
	mov	%eax,%ebx
	movl	%edi,-4(%ebp)
	fildl	-4(%ebp)
	fstps	8(%ebx)
	movl	%esi,-4(%ebp)
	fildl	-4(%ebp)
	fstps	12(%ebx)
	fldl	_66
	fstpl	8(%esp)
	fldl	_67
	fstpl	(%esp)
	call	_brl_random_Rnd
	fstps	16(%ebx)
	fldz
	fstps	20(%ebx)
	movl	$1,4(%esp)
	movl	$255,(%esp)
	call	_brl_random_Rand
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fstps	24(%ebx)
	movl	$1,4(%esp)
	movl	$255,(%esp)
	call	_brl_random_Rand
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fstps	28(%ebx)
	movl	$1,4(%esp)
	movl	$255,(%esp)
	call	_brl_random_Rand
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fstps	32(%ebx)
	mov	%ebx,%eax
	jmp	_36
_36:
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Particle_UpdateAll:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$16,%esp
	cmpl	$_bbNullObject,__bb_Particle_ParticleList
	jne	_50
	mov	$0,%eax
	jmp	_38
_50:
	movl	__bb_Particle_ParticleList,%edi
	mov	%edi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*140(%eax)
	movl	%eax,-8(%ebp)
	jmp	_7
_9:
	movl	-8(%ebp),%eax
	movl	$_bb_Particle,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	mov	%eax,%ebx
	cmp	$_bbNullObject,%ebx
	je	_7
	flds	20(%ebx)
	fadds	__bb_Particle_Gravity
	fstps	20(%ebx)
	flds	8(%ebx)
	fadds	16(%ebx)
	fstps	8(%ebx)
	flds	12(%ebx)
	fadds	20(%ebx)
	fstps	12(%ebx)
	flds	32(%ebx)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,8(%esp)
	flds	28(%ebx)
	fstpl	(%esp)
	call	_bbFloatToInt
	mov	%eax,%esi
	flds	24(%ebx)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%esi,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_SetColor
	flds	_71
	fstps	12(%esp)
	flds	_72
	fstps	8(%esp)
	flds	12(%ebx)
	fstps	4(%esp)
	flds	8(%ebx)
	fstps	(%esp)
	call	_brl_max2d_DrawRect
	flds	12(%ebx)
	fstps	-4(%ebp)
	call	_brl_graphics_GraphicsHeight
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	flds	-4(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_57
_57:
_7:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_9
_8:
	mov	$0,%eax
	jmp	_38
_38:
	add	$16,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_40:
	.long	0
	.align	4
__bb_Particle_ParticleList:
	.long	_bbNullObject
	.align	4
__bb_Particle_Gravity:
	.long	0x3dcccccd
_11:
	.asciz	"Particle"
_12:
	.asciz	"x"
_13:
	.asciz	"f"
_14:
	.asciz	"y"
_15:
	.asciz	"xs"
_16:
	.asciz	"ys"
_17:
	.asciz	"r"
_18:
	.asciz	"g"
_19:
	.asciz	"b"
_20:
	.asciz	"New"
_21:
	.asciz	"()i"
_22:
	.asciz	"Delete"
_23:
	.asciz	"Create"
_24:
	.asciz	"(i,i):Particle"
_25:
	.asciz	"UpdateAll"
	.align	4
_10:
	.long	2
	.long	_11
	.long	3
	.long	_12
	.long	_13
	.long	8
	.long	3
	.long	_14
	.long	_13
	.long	12
	.long	3
	.long	_15
	.long	_13
	.long	16
	.long	3
	.long	_16
	.long	_13
	.long	20
	.long	3
	.long	_17
	.long	_13
	.long	24
	.long	3
	.long	_18
	.long	_13
	.long	28
	.long	3
	.long	_19
	.long	_13
	.long	32
	.long	6
	.long	_20
	.long	_21
	.long	16
	.long	6
	.long	_22
	.long	_21
	.long	20
	.long	7
	.long	_23
	.long	_24
	.long	48
	.long	7
	.long	_25
	.long	_21
	.long	52
	.long	0
	.align	4
_bb_Particle:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_10
	.long	36
	.long	__bb_Particle_New
	.long	__bb_Particle_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Particle_Create
	.long	__bb_Particle_UpdateAll
	.align	8
_66:
	.long	0x0,0x40100000
	.align	8
_67:
	.long	0x0,0xc0100000
	.align	4
_71:
	.long	0x41000000
	.align	4
_72:
	.long	0x41000000
