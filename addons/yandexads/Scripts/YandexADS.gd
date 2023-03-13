extends Node

var callback_ad = JavaScriptBridge.create_callback (_ad)

@onready var window = JavaScriptBridge.get_interface("window")

func js_show_ad() -> void:
	window.ShowAd()

func js_show_rewarded_ad():
	window.ShowRewaededAd()

func _ad(args) -> void:
	print("is_show_ad", args[0])

func _ready() -> void:
	window.initGame(null)

