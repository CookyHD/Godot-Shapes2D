@tool
extends Node2D
class_name Circle2D

@export var color:Color = Color.WHITE:
	set(value):
		color = value
		queue_redraw()
@export var radius:float = 16:
	set(value):
		radius = clampf(radius,0,INF)
		radius = value
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
	var pos:Vector2 = offset
	if !centerd:
		pos = offset + Vector2(radius,radius)
	if filled:
		draw_circle(pos,radius,color,true)
	else:
		draw_circle(pos,radius,color,false,width)
