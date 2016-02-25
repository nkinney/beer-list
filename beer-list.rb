require 'json'

@beers_string = "21st Amendment|Back in Black|black IPA|all
21st Amandment|Fireside Chat|Winter Warmer|winter
21st Amendment|Hell or High Watermelon|fruit beer|summer
Abita|Purple Haze|fruit beer|all
Amstel|Amstel Light|European Light Lager|all
Anchor Brewing|Anchor Steam|Steam Beer|all
Avery Brewing|White Rascal|Witbier|all
Ballast Point|Sculpin|American IPA|all
Bass Brewery|Bass Pale Ale|English Pale Ale|all
Beck's Brewery|Beck's|German Pilsner|all
Bell's|Oberon Ale|American Pale Wheat Ale|summer
Bell's|Two Hearted Ale|American IPA|all
Blue Moon Brewing|Blue Moon|Witbier|all
Boddingtons Brewery|Boddington's Pub Ale|English Pale Ale|all
Breckenridge Brewery|471|IPA|all
Breckenridge|Christmas Ale|Winter Warmer|winter
Brew Kettle|Black Rajah|Black IPA|all
Brew Kettle|White Rajah|American IPA|all
Brooklyn Brewing|Brooklyn IPA|IPA|all
Brooklyn Brewing|Brooklyn Lager|American Amber Lager|all
Brooklyn Brewing|Post Road Pumpkin Ale|Pumpkin Ale|fall
Brooklyn Brewing|Brooklyn Summer Ale|English Pale Ale|summer
Charles Wells|Banana Bread|Fruit Beer|all
Columbus Brewing Company|IPA|IPA|all
Crabbies|Ginger Beer|Spiced Beer|all
Deschutes Brewery|Black Butte|American Porter|all
Deschutes Brewery|Mirror Pond|American Pale Ale|all
Dogfish Head|60 minute IPA|American IPA|all
Dogfish Head|90 Minute IPA|Double IPA|all
Dos Equis|Dos Equis Amber Lager|Vienna lager|all
DuClaw|Sweet Baby Jesus!|Chocolate Peanut Butter Porter|all
Fat Heads|Bumble Berry|fruit beer|all
Fat Heads|Headhunter|American IPA|all
Fat Heads|Holly Jolly|Spiced Beer|winter
Fat Heads|Spooky Tooth|Pumkin Ale|fall
Flying Monkey|Smashbomb Atomic IPA|IPA|all
Four String Brewing|Brass Knuckle|American Pale Ale|all
Goose Island|312|American Pale Wheat Ale|all
Great Divide|Titan IPA|American IPA|all
Great Lakes Brewing|Blackout Stout|winter
Great Lakes Brewing|Burning River|American Pale Ale|all
Great Lakes Brewing|Chillwave|Double IPA|all
Great Lakes Brewing|Christmas Ale|Winter Warmer|winter
Great Lakes Brewing|Commodore Perry|IPA|all
Great Lakes Brewing|Conwaya Irish Ale|Irish Red Ale|all
Great Lakes Brewing|Dortmunder Gold|Dortmunder|all
Great Lakes Brewing|Edmund Fitzgerald|American Porter|all
Great Lakes Brewing|Elliot Ness|Vienna Lager|all
Great Lakes Brewing|Oktoberfest|Oktoberfest|fall
Great Lakes Brewing|Rye of the Tiger|IPA|summer
Guiness|Guiness Stout|Irish Dry Stout|all
Harp|Harp Lager|European Pale Lager|all
Heineken|Heineken Lager|European Pale Lager|all
Hoegaarden|Hoegaarden|Witbier|all
Hofbrau|Hofbrau Original|German Lager|all
Kentucky Brewing|Bourbon Barrel Ale|English Strong Ale|all
Killians|Irish Red|American Amber Lager|all
Kona|Big Wave Golden Ale|American Blonde Ale|all
Kona|Longboard|American Pale Lager|all
Lagunitas|A little Sumpin Sumpin|American Pale Wheat Ale|all
Lagunitas|Lagunitas IPA|IPA|all
Landshark|Landshark Lager|American lager|all
Left Hand|Milk Stout Nitro|Milk Stout|all
Leinenkugel|Cranberry Ginger Shandy|Fruit Beer|winter
Leinenkugel|Grapefruit Shandy|Fruit Beer|all
Leinenkugel|Oktoberfest|Oktoberfest|fall
Leinenkugel|Snowdrift Vanilla Porter|American Porter|winter
Leinenkugel|Summer Shandy|Fruit Beer|summer
Leinenkugel|Sunset Wheat|Witbier|all
Lindemans|Framboise|Fruit Lambic|all
Lost Coast|Tangerine|Fruit Beer|all
Madtree|PsycHOPathy|American IPA|all
Magic Hat|#9|Fruit Beer|all
Magic Hat|Pistil|Spiced Beer|spring
New Belgium|Fat Tire|Amber Ale|all
New Belgium|Ranger IPA|IPA|all
Newcastle|Brown Ale|English Brown Ale|all
Omission|Omission Lager|American Pale Lager - Gluten Free|all
Pacifico|Clara|American Lager|all
Peroni|Nastro Azzurro|European Pale Lager|all
Red Stripe|Red Stripe Lager|American Lager|all
Revolution Brewing|Fistmas|Spiced Beer|winter
Rouge|Dead Guy Ale|Bock|all
Samuel Adams|Boston Lager|Vienna Lager|all
Samuel Adams|Cherry Wheat|Fruit Beer|all
Samuel Adams|Octoberfest|Oktoberfest|fall
Samuel Adams|Summer Ale|American Pale Wheat Ale|summer
Samuel Adams|Winter Lager|Bock|winter
Samuel Smiths|Nut Brown Lager|English Brown Ale|all
Samuel Smiths|Oatmeal Stout|Oatmeal Stout|all
Shiner|Shiner Bock|Bock|all
Sierra Nevada|Pale Ale|American Pale Ale|all
Sierra Nevada|Torpedo|American IPA|all
Smith and Forge|Hard Cider|Hard Cider - gluten free|all
Smithwicks|Irish Red|Irish Red Ale|all
Southern Tier|Souther Tier IPA|IPA|all
Southern Tier|Pumking|Pumpkin Ale|fall
St. Pauli Brauerei|St. Pauli Girl|German Pilsner|all
|Stella Artois|European Pale Lager|all
Stone|Arrogant Bastard|American Strong Ale|all
Stone|IPA|American IPA|all
Heineken|Strongbow Cider|Hard Cider|all
SweetWater Brewing|420|American Pale Ale|all
SweetWater Brewing|Hop Hash|Double IPA|all
Thirsty Dog|12 Dogs of Christmas|Winter Warmer|winter
Thirsty Dog|Old Leghumper|American Porter|all
Thirsty Dog|Pumpkin Ale|Pumpkin Ale|fall
Thirsty Dog|Raspberry Ale|Fruit Beer|all
Heineken Asia Pacific|Tiger Lager|American Lager|all
Woodchuck|Hard Cider|Hard Cider - Gluten Free|all
Youngs|Double Chocolate Stout|Milk Stout|all
Yuengling|IPL|American Pale Lager|winter
Yuengling|Oktoberfest|Oktoberfest|fall"

@beers = []

def add_beer(beer_string, id = 0)
	split_beer_string = beer_string.split '|'
	@beers << {:id => id, :brewery => split_beer_string[0], :beer => split_beer_string[1], :style => split_beer_string[2], :season => split_beer_string[3]}
end

def parse_beers_string
	id = 0
	@beers_string.split("\n").each do |b|
		id += 1
		add_beer b, id
	end

	puts @beers.to_json
end

parse_beers_string
