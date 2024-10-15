extends CharacterBody2D

var moveSpeed:int = 500
var canMove:bool = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#Movement
	if canMove:
		velocity = Vector2()
		
		velocity.y = Input.get_axis("p1-forward","p1-backward")
		velocity.x = Input.get_axis("p1-left","p1-right")
		
		velocity = velocity.normalized() * moveSpeed
		
		move_and_slide()
	
	
