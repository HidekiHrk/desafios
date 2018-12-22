/*
Solução desenvolvida por HIDEKI

Entrega: 22/12/18 17:52 BRT

Pontos (base): 10
Pontos adicionais: 0
Pontos (total): 10

Forma(s) de contato:
 - Discord: Hideki#2118
 - GitHub: https://github.com/HidekiHrk
 - Facebook: https://www.facebook.com/profile.php?id=100015139758315
*/

const items = {
	12: "drummers drumming",
	11: "pipers piping",
	10: "lords a-leaping",
	9: "ladies dancing",
	8: "maids a-milking",
	7: "swans a-swimming",
	6: "geese a-laying",
	5: "golden rings",
	4: "calling birds",
	3: "French hens",
	2: "Turtle Doves",
}

// Util Functions //

function ordinal(num){
	if(num <= 0){
		throw Error("num must be greater than 0");
	}
	let finalNum = num.toString();
	switch(num){
		case 1:
			finalNum += "st";
			break;
		case 2:
			finalNum += "nd";
			break;
		case 3:
			finalNum += "rd";
			break;
		default:
			finalNum += "th";
	}
	return finalNum;
}

function itemGet(dict, key, def=undefined){
	let item = dict[key];
	if(item != undefined)
		return item;
	else
		return def;
}

// Main //

function main(){
	for(var x = 1; x <= 12; x++){
		console.log(`On the ${ordinal(x)} day of Christmas`)
		console.log("My true love sent to me")
		if(x == 1)
			console.log("a Partridge in a Pear Tree.")
		else{
			for(var c = x; c > 0; c--){
				if(c == 1)
					continue;
				console.log(c.toString(), itemGet(items, c) + ',')
			}
			console.log("and a Partridge in a Pear Tree.")
		}
		console.log()
	}
}
main()
