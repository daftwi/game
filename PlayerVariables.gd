extends Node

var inspo = 0
var conf = {
	"Bedroom": 0,
	"Library": 0,
	"Bathroom": 0,
	"Desk": 0
}
var scn = {
	"Bedroom": false,
	"Library": false,
	"Bathroom": false,
	"Desk": false,
	"Computer": false
}
var first_ent = {
	"Bedroom": true,
	"Library": true,
	"Bathroom": true,
	"Desk": true
}
var first_clicked_bedroom = true
var pay = {
	"FirstTask": true,
	"SecondTask": true,
	"ThirdTask": true,
	"ForthTask": true,
	"FifthTask": true,
	"Final": true
}
var first_enc_bedroom = {
	"CatOnBed": true,
	"CatOnChair": true,
	"Orb": true,
	"Candles": true,
	"Picture": true,
	"Medal": true,
	"Plants": true,
	"Easel": true,
	"Matryoshka": true,
	"Skull": true,
	"Couldron": true,
	"Crystals": true,
	"Tea": true,
	"Ingridients": true,
	"MoonPhase": true,
	"Map": true
}
var first_enc_bathroom = {
	"Towel": true,
	"TattooMan": true,
	"Wooman": true,
	"Mirror": true,
	"Wardrobe": true,
	"Bottles": true,
	"Cucuretka": true,
	"Plants": true,
	"Wood": true
}
var first_enc_desk = {
	"CatOnTable": true,
	"CatWantOnTable": true,
	"Drink": true,
	"Timer": true,
	"Books": true,
	"Pens": true,
	"UnoPeno": true,
	"Note": true,
	"Plant": true,
	"Plan": true
}
var first_enc_library = {
	"Cat": true,
	"CatOrange": true,
	"CatOnStairs": true,
	"OwlWithAHat": true,
	"ChillOwl": true,
	"CatSleeping": true,
	"HigherOwlWithAHat": true,
	"MainBook": true,
	"Table": true,
	"Globe": true
}
var tasks_completed = {
	"FirstTask": false,
	"SecondTask": false,
	"ThirdTask": false,
	"ForthTask": false,
	"FifthTask": false,
	"Final": false
}
var buggs = 16
var buggs_found = {
	"Bedroom": false,
	"Library": false,
	"Bathroom": false,
	"Desk": false,
	"Computer": false
}
