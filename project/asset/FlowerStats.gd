extends Node


export var health = 3 setget test

func test(value):
	health -= value
	print(health)
