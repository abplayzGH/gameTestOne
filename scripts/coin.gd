extends Area2D



func _on_body_entered(body: Node2D) -> void:
	print("Collected Coin!") # Replace with function body.
	queue_free()
	
