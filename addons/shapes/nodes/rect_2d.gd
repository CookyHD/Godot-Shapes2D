@tool
extends Node2D
class_name Rect2D

@export var color:Color = Color.WHITE:
	set(value):
		color = value
		queue_redraw()
@export var size:Vector2 = Vector2(32,32):
	set(value):
		size = size.clamp(Vector2.ZERO,Vector2.INF)
		size = value
		queue_redraw()
@export var width:float = 2:
	set(value):
		width = clampf(width,0,INF)
		width = value
		queue_redraw()
@export var filled:bool = false:
	set(value):
		filled = value
		queue_redraw()
@export var centerd:bool = true:
	set(value):
		centerd = value
		queue_redraw()
@export var offset:Vector2 = Vector2.ZERO:
	set(value):
		offset = value
		queue_redraw()

func _draw() -> void:
	var pos = offset
	if centerd:
		pos = offset - (size / 2)
	if filled:
		draw_rect(Rect2(pos,size),color,true)
	else:
		draw_rect(Rect2(pos,size),color,false,width)
