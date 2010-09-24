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
	.reference	_bbAppTitle
	.reference	_bbGCFree
	.reference	_bbStringClass
	.reference	_brl_graphics_Flip
	.reference	_brl_graphics_Graphics
	.reference	_brl_max2d_Cls
	.reference	_brl_max2d_DrawRect
	.reference	_brl_max2d_DrawText
	.reference	_brl_max2d_SetColor
	.reference	_brl_max2d_SetHandle
	.reference	_brl_max2d_SetOrigin
	.reference	_brl_max2d_SetTransform
	.reference	_brl_max2d_TextHeight
	.reference	_brl_max2d_TextWidth
	.reference	_brl_polledinput_KeyHit
	.globl	__bb_main
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$32,%esp
	cmpl	$0,_26
	je	_27
	mov	$0,%eax
	add	$32,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_27:
	movl	$1,_26
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
	mov	$_7,%ebx
	incl	4(%ebx)
	movl	_bbAppTitle,%eax
	decl	4(%eax)
	jnz	_17
	movl	%eax,(%esp)
	call	_bbGCFree
_17:
	movl	%ebx,_bbAppTitle
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	$480,4(%esp)
	movl	$640,(%esp)
	call	_brl_graphics_Graphics
	mov	$_8,%edi
	movl	%edi,(%esp)
	call	_brl_max2d_TextWidth
	mov	%eax,%esi
	movl	%edi,(%esp)
	call	_brl_max2d_TextHeight
	mov	%eax,%ebx
	flds	_29
	fstps	-4(%ebp)
	mov	$_7,%eax
	incl	4(%eax)
	movl	%eax,-8(%ebp)
	movl	_bbAppTitle,%eax
	decl	4(%eax)
	jnz	_25
	movl	%eax,(%esp)
	call	_bbGCFree
_25:
	movl	-8(%ebp),%eax
	movl	%eax,_bbAppTitle
	jmp	_9
_11:
	call	_brl_max2d_Cls
	flds	-4(%ebp)
	fadds	_30
	fstps	-4(%ebp)
	flds	_31
	fstps	4(%esp)
	flds	_32
	fstps	(%esp)
	call	_brl_max2d_SetOrigin
	mov	%ebx,%eax
	cdq
	and	$1,%edx
	add	%edx,%eax
	sar	$1,%eax
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	fstps	4(%esp)
	mov	%esi,%eax
	cdq
	and	$1,%edx
	add	%edx,%eax
	sar	$1,%eax
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	fstps	(%esp)
	call	_brl_max2d_SetHandle
	flds	_33
	fstps	8(%esp)
	flds	_34
	fstps	4(%esp)
	flds	-4(%ebp)
	fstps	(%esp)
	call	_brl_max2d_SetTransform
	movl	$255,8(%esp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	call	_brl_max2d_SetColor
	movl	%ebx,-12(%ebp)
	fildl	-12(%ebp)
	fstps	12(%esp)
	movl	%esi,-12(%ebp)
	fildl	-12(%ebp)
	fstps	8(%esp)
	fldz
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	call	_brl_max2d_DrawRect
	movl	$255,8(%esp)
	movl	$255,4(%esp)
	movl	$255,(%esp)
	call	_brl_max2d_SetColor
	fldz
	fstps	8(%esp)
	fldz
	fstps	4(%esp)
	movl	%edi,(%esp)
	call	_brl_max2d_DrawText
	fldz
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	call	_brl_max2d_SetOrigin
	fldz
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	call	_brl_max2d_SetHandle
	fld1
	fstps	8(%esp)
	fld1
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	call	_brl_max2d_SetTransform
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
_9:
	movl	$27,(%esp)
	call	_brl_polledinput_KeyHit
	cmp	$0,%eax
	je	_11
_10:
	mov	$0,%eax
	jmp	_12
_12:
	add	$32,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_26:
	.long	0
	.align	4
_7:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	70,117,99,107,32,89,111,117,32,74,111,104,110
	.align	4
_8:
	.long	_bbStringClass
	.long	2147483647
	.long	31
	.short	42,42,42,42,42,32,70,85,67,75,32,89,79,85,32,74
	.short	79,72,78,32,66,65,82,82,89,32,42,42,42,42,42
	.align	4
_29:
	.long	0x0
	.align	4
_30:
	.long	0x40400000
	.align	4
_31:
	.long	0x43700000
	.align	4
_32:
	.long	0x43a00000
	.align	4
_33:
	.long	0x40a00000
	.align	4
_34:
	.long	0x40400000
