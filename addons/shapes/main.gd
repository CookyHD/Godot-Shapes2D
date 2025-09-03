@tool
extends EditorPlugin

func _enter_tree():
	add_custom_type("Circle2D", "Node2D", preload("nodes/circle_2d.gd"), preload("icons/Circle2D.svg"))
	add_custom_type("Rect2D", "Node2D", preload("nodes/rect_2d.gd"), preload("icons/Rect2D.svg"))

func _exit_tree():
	remove_custom_type("Circle2D")
	remove_custom_type("Rect2D")
