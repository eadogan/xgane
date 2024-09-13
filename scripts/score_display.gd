extends CanvasLayer

var coinsCollected = 0
var save_data: SaveData


func _ready() -> void:
	save_data = SaveData.load_or_create()
	$scorecount.text = "High Score: " + str(save_data.high_score)
	$coincount.text = "Coins: " + str(coinsCollected)



func add_point() -> void:
	coinsCollected += 1
	$coincount.text = "Coins: " + str(coinsCollected)
	update_score()
	
	

func update_score() -> void:
	if coinsCollected > save_data.high_score:
		$scorecount.text = "High Score: " + str(coinsCollected)
		save_data.high_score = coinsCollected
		save_data.save()
	else:
		pass
		
