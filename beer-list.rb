require 'json'

@beers_string = "brewery|beer|style|season|abv|ibu|description
21st Amendment|Back in Black|black IPA|all|7|65|Inspired by Paul Revere’s midnight ride, we rebelled against the British style IPA, embraced the more aggressive American version and then recast it in bold, brave, defiant black. Our Black IPA is a Declaration of Independence from the tyranny of the expected. Back in Black is a year-round beer available in six pack cans and on draft. Brewed like an American IPA but with the addition of rich, dark malts, this beer has all the flavor and hop character you expect with a smooth, mellow finish.
21st Amandment|Fireside Chat|Winter Warmer|winter|7.9|45|Like FDR’s Depression-era radio addresses, which were like a kick in the butt and a hug at the same time, our Fireside Chat is a subtle twist on the traditional seasonal brew. We begin with a rich, dark, English-style ale and then we improvise with spices until we know we have a beer worth sharing with the nation.
21st Amendment|Hell or High Watermelon|fruit beer|summer|4.9|17|Like Lady Liberty, we stand for independence and perseverance. In the pursuit of innovative beer, there is no obstacle too great. No journey too long. No fruit too gigantic. This American wheat beer is brewed with real watermelon, for a flavor that’s surprisingly crisp, dry and refreshing—summer in a can.
Abita|Purple Haze|fruit beer|all|4.2|13|Experience the magic of Purple Haze.® Clouds of real raspberries swirl in this tart and tantalizing lager inspired by the good spirits and dark mysteries of New Orleans. Brewed with pilsner and wheat malts along with Vanguard hops, let the scent of berries in the hazy purple brew put a spell on you.
Amstel|Amstel Light|European Light Lager|all|3.5|0|Amstel Light has a rich, hoppy, never-diluted flavor that sets it apart from other light beers.
Anchor Brewing|Anchor Steam|Steam Beer|all|4.9|35|San Francisco's famous Anchor Steam®, the classic of American brewing tradition since 1896, is virtually handmade, with an exceptional respect for the ancient art of brewing. The deep amber color, thick creamy head, and rich flavor all testify to our traditional brewing methods. Anchor Steam is unique, for our brewing process has evolved over many decades and is like no other in the world. Anchor Steam derives its unusual name from the 19th century when \"steam\" seems to have been a nickname for beer brewed on the West Coast of America under primitive conditions and without ice. The brewing methods of those days are a mystery and, although there are many theories, no one can say with certainty why the word \"steam\" came to be associated with beer. For many decades Anchor alone has used this quaint name for its unique beer. In modern times, \"Steam\" has become a trademark of Anchor Brewing.
Avery Brewing|White Rascal|Witbier|all|5.6|22|A truly authentic Belgian style wheat or “white” ale, this Rascal is unfiltered (yup, that’s yeast on the bottom) and cleverly spiced with coriander and Curaçao orange peel producing a refreshingly zesty classic ale.
Ballast Point|Sculpin|American IPA|all|7|70|The Sculpin IPA is a testament to our humble beginnings as Home Brew Mart. Founded in 1992, the Mart continues to be a catalyst for the San Diego brewing scene, setting the trend for handcrafted ales. Inspired by our customers, employees and brewers, the Sculpin IPA is bright with aromas of apricot, peach, mango and lemon. Its lighter body also brings out the crispness of the hops. This delicious Ballast Point Ale took a Bronze Medal at the 2007 Great American Beer Festival in the Pro Am category. The Sculpin fish has poisonous spikes on its fins that can give a strong sting. Ironically, the meat from a Sculpin is considered some of the most tasty. Something that has a sting but tastes great, sounds like a Ballast Point India Pale Ale. 
Bass Brewery|Bass Pale Ale|English Pale Ale|all|5.1|49|A classic pale ale. This version of Bass for the North American market at 5% to comply with USA ale regulations.
Beck's Brewery|Beck's|German Pilsner|all|4.9|21|Our original Beck’s is a classic German lager beer with a distinctive full-bodied taste, fresh \"hoppy\" bouquet, golden color and full rich head. Adding to its complexity is a slightly fruity but firm crispness and a dry, clean finish.
Bell's|Oberon Ale|American Pale Wheat Ale|summer|5.8||Bell's Oberon is a wheat ale fermented with Bell's signature house ale yeast, mixing a spicy hop character with mildly fruity aromas. The addition of wheat malt lends a smooth mouthfeel, making it a classic summer beer. 
Bell's|Two Hearted Ale|American IPA|all|7|0|Bell's Two Hearted Ale is defined by its intense hop aroma and malt balance. Hopped exclusively with the Centennial hop varietal from the Pacific Northwest, massive additions in the kettle and again in the fermenter lend their characteristic grapefruit and pine resin aromas. A significant malt body balances this hop presence; together with the signature fruity aromas of Bell's house yeast, this leads to a remarkably drinkable American-style India Pale Ale.
Blue Moon Brewing|Blue Moon|Witbier|all|5.4|9|Blue Moon Belgian White, Belgian-style wheat ale, is a refreshing, medium-bodied, unfiltered Belgian-style wheat ale spiced with fresh coriander and orange peel for a uniquely complex taste and an uncommonly smooth finish.
Boddingtons Brewery|Boddington's Pub Ale|English Pale Ale|all|4.7||Boddingtons Pub Ale is a higher ABV version of Boddingtons Bitter brewed for Export Markets. Boddingtons has been enjoyed by beer drinkers in England for more than 200 years, and is well known for its creamy head and smooth body. Boddingtons is a refreshing, smooth beer renowned for its golden colour, full-bodied flavour and malty, moreish taste with smooth, tight creamy head.
Breckenridge Brewery|471|IPA|all|9.2|70|Hoppy? Brother, 471 IPA redefines hoppy. 471 is a small batch, limited edition ale that was created by our Brewmaster to separate the weak from the strong. 471 is a double IPA, that combines Pale, Munich, Caramel-30, Carapils and Torrified Wheat malts, with Chinook, Centennial, Simcoe and Fuggles hops. It has a big sweet mouthfeel, followed by more hoppiness than you've ever had at one time. Enjoy
Breckenridge|Christmas Ale|Winter Warmer|winter|7.4|22|This winter warmer carries a sturdy texture and rich flavors of caramel and chocolate. Our holiday seasonal is the fermented equivalent of a good fire.
Brew Kettle|Black Rajah|Black IPA|all|6.8|70|A Black IPA full of tropical fruit players and assertive bitterness and a hint of roasted malt. Featuring Citra hops.
Brew Kettle|White Rajah|American IPA|all|6.8|70|A West Coast style IPA full of citrus-like and tropical fruit like hop flavor and aroma with an assertive yet smooth bitter finish....malt, take a back seat please.
Brooklyn Brewing|Brooklyn IPA|IPA|all|6.9|47|Plenty of IPAs will promise you the moon and the stars, looking to seduce you with words of smashing bitterness and hops everlasting. Actually, we're not here to \"blow you away with a lupulin cannon,\" or \"peel the enamel off your teeth.\" East IPA is a clean, drinkable IPA that's packed with flavor and offers a bold balance, not a smack in the head. American hops soar in the bright piney aroma, while East Kent Goldings hops bring the taste of stone fruits and firm bitterness from IPA's ancestral British home. Give our East IPA a try with some rich crab cakes or salmon, strike up a conversation with farmhouse cheddars, and find harmony alongside spicy dishes. East IPA's blend of tradition and exuberance sets the standard for hop-driven deliciousness.
Brooklyn Brewing|Brooklyn Lager|American Amber Lager|all|5.2|33|In the late 1800’s Brooklyn was one of the largest brewing centers in the country, home to more than 45 breweries. Lager beer in the “Vienna” style was one of the local favorites. Brooklyn Lager is amber-gold in color and displays a firm malt center supported by a refreshing bitterness and floral hop aroma. Caramel malts show in the finish. The aromatic qualities of the beer are enhanced by “dry-hopping”, the centuries-old practice of steeping the beer with fresh hops as it undergoes a long, cold maturation. The result is a wonderfully flavorful beer, smooth, refreshing and very versatile with food. Dry-hopping is largely a British technique, which we’ve used in a Viennese-style beer to create an American original.
Brooklyn Brewing|Post Road Pumpkin Ale|Pumpkin Ale|fall|5|24|Early American colonists, seeking natural ingredients for brewing ales, turned to pumpkins, which were plentiful, flavorful and nutritious. Blended with barley malt, pumpkins became a commonly used beer ingredient. Post Road Pumpkin Ale brings back this tasty tradition. Hundreds of pounds of pumpkins are blended into the mash of each batch, creating a beer with an orange amber color, warm pumpkin aroma, biscuity malt center, and crisp finish.
Brooklyn Brewing|Brooklyn Summer Ale|English Pale Ale|summer|5|18|Summer in Brooklyn is all about following your impulses, winging it from beaches and barbecues to stoops and rooftops. Brooklyn Summer Ale is a refreshing, flavorful pale ale made to accompany you on all your warm weather adventures. 100% British 2-row barley brings its famed bready flavors, capped off with German and American hops to provide a snappy, clean bitterness and a bright, floral aroma. It's a sunny pale ale, Brooklyn style.
Charles Wells|Banana Bread|Fruit Beer|all|5.2|18|A silky, crisp, and rich amber-colored ale with a fluffy head and strong banana note on the nose.
Columbus Brewing Company|IPA|IPA|all|6.5|50|hopped with Simcoe
Crabbies|Ginger Beer|Spiced Beer|all|4|0|Gluten FREE
Deschutes Brewery|Black Butte|American Porter|all|5.2|30|This is the beer that started it all. A delicate, creamy mouthfeel contrasts with layered depth revealing distinctive chocolate and coffee notes. Dark and rich, yet easy to drink.
Deschutes Brewery|Mirror Pond|American Pale Ale|all|5|40|The quintessential Northwest pale ale. Cascade hops and more Cascade hops give this tawny colored ale delicious hop-forward aroma and flavor. Pale malt allows the hops to linger, not overpower.
Dogfish Head|60 minute IPA|American IPA|all|6|60|Our flagship beer. A session India Pale Ale brewed with Warrior, Amarillo & 'Mystery Hop X.' A powerful East Coast I.P.A. with a lot of citrusy hop character. THE session beer for beer geeks like us! 
Dogfish Head|90 Minute IPA|Double IPA|all|9|90|Esquire Magazine calls our 90 Minute IPA \"perhaps the best IPA in America.\" An imperial IPA best savored from a snifter, 90 Minute has a great malt backbone that stands up to the extreme hopping rate. 90 Minute IPA was the first beer we continuously hopped, allowing for a pungent, but not crushing, hop flavor.
Dos Equis|Dos Equis Amber Lager|Vienna lager|all|4.7|0|Dos Equis is a lager that was originally brewed by the German-born Mexican brewer Wilhelm Hasse in 1897. The brand was named \"Siglo XX\" (\"20th century\") to commemorate the arrival of the new century, and the bottles were marked with the Roman numerals \"XX\", or \"Dos Equis\" (two X).
DuClaw|Sweet Baby Jesus!|Chocolate Peanut Butter Porter|all|6.2|53|Chocolate Peanut Butter Porter with natural and artificial flavors. First brewed in 2011, this Chocolate Peanut Butter Porter is jet black in color with a tan, rocky head, full body and creamy, luxurious mouthfeel. Its lightly sweet, malty flavor is accented by strong notes of chocolate, coffee and peanut butter, and balanced by a subtle hop character and moderate 6.5% abv. Sweet Baby Jesus finishes smooth, dry and roasty with notes of chocolate, espresso and peanut butter so rich, you will exclaim its name!
Fat Heads|Bumble Berry|fruit beer|all|5.3|13|Brewed with fresh harvested spring honey, stolen from some very angry bees (we have the welts to prove it) and infused with our own special painstakingly, handpicked blueberry essence. A light refreshing ale with a nice blueberry aroma, crackery malt flavors with a hint of sweetness and a light tart blueberry finish. \"Most Refreshing Beer in America\" 1st Place - Brewing News Global Warming Open
Fat Heads|Headhunter|American IPA|all|7.5|87|Uncivilized and aggressive, this West Coast styled IPA packs wicked hop flavors and aroma. World Beer Cup Silver 2012. GABF Silver 2010, Bronze 2011. National IPA Championship Winner 2012, 2010.
Fat Heads|Holly Jolly|Spiced Beer|winter|7.5|18|Once upon a frozen evening way up north, a sweet local honey named Holly inspired our Jolly Fat Man (as only Holly can) to create this festive spiced holiday ale. We think you will enjoy his holiday creation with it's aromas and flavors of Christmas day. Sweet malt, ginger, honey and cinnamon spice. Sip this by the fire with your significant other. Who knows, maybe it will lead to a little inspiration of your own. From our Jolly Fat Man to yours, Happy Holidays. Food Pairings: Pretzels with Mustard, Apple Pie, Holiday Fruit Cake.
Fat Heads|Spooky Tooth|Pumkin Ale|fall|9||Rich amber color with aroma of sweet pumpkin pie and savory spices with hints of sweet malt. A chewy mouthfeel that you can sink your teeth into. Rich and creamy with pumpkin up front then sweet malt flavors, pie crust graininess, spice, hints of brown sugar and a clean finish.
Flying Monkey|Smashbomb Atomic IPA|IPA|all|6|72|
Four String Brewing|Brass Knuckle|American Pale Ale|all|5.75|36|A hard-rocking sly session ale (easy drinking) that smacks the lips with tasty bitter hops and citrusy grapefruit shots to the nose. It finishes crisp and dry, sustaining like a windmill power chord. All of a sudden it hits you...this is the one.
Goose Island|312|American Pale Wheat Ale|all|5.4|30|We are from the city that invented the skyscraper. We constructed our Urban Pale Ale on a balanced malt backbone, so the citrus hop aroma and crisp flavor can stand tall.
Great Divide|Titan IPA|American IPA|all|7.1|65|Traditionally India Pale Ales, the hoppiest of all pales, were brewed with more alcohol and large quantities of hops in order to survive the lengthy ocean journey from the U.K. to India. Unlike our brewing forefathers, Great Divide enjoys the modern benefits of refrigeration and we donâ€™t have any plans to ship Titan IPA to India. Instead, we brew Titan IPA for hop disciples â€“ independent beer drinkers seeking out robust, flavorful beers characterized by their abundance of hops flavor, aroma and bitterness. As a big, aggressively hopped India Pale Ale, Titan IPA fills this bill â€“ beginning with piney hop aromas and citrus hop flavors, and finishing with a rich, malty sweetness that is carefully balanced with crisp hop bitterness.
Great Lakes Brewing|Blackout Stout|winter|9|50|A Russian Imperial Stout with a hearty malt body and bold hop flavor.
Great Lakes Brewing|Burning River|American Pale Ale|all|6|45|An assertively hopped American pale ale with citrusy and piney Cascade hops. Named after the 1969 burning of the cuyahoga river, our American pale ale combines a citrusy cascade hop flavor worn a fruity assertiveness. In keeping with the Bavarian purity law of 1516, this beer is traditionally brewed from all natural ingredients:barly,hops,yeast, and water. No chemicals or preservatives are used.
Great Lakes Brewing|Chillwave|Double IPA|all|9.4|80|Hop-forward with a balanced blend of Mosaic and Nugget hops.
Great Lakes Brewing|Christmas Ale|Winter Warmer|winter|7.5|30|A holiday ale brewed with honey and spiced with fresh ginger and cinnamon.
Great Lakes Brewing|Commodore Perry|IPA|all|7.5|70|A medium-bodied and well hopped India pale ale with a dry, fruity finish. Named in honor of the hero of the Battle of Lake Erie during the War of 1812. \"Don't Give Up the Sip!\"
Great Lakes Brewing|Conways Irish Ale|Irish Red Ale|all|6.5|25|A malty Irish ale with a notable toasty flavor derived from lightly roasted malt.
Great Lakes Brewing|Dortmunder Gold|Dortmunder|all|5.8|30|A smooth lager that strikes a delicate balance between sweet malt and dry hop flavors.
Great Lakes Brewing|Edmund Fitzgerald|American Porter|all|5.8|37|A complex, roasty porter with a bittersweet, chocolate-coffee taste and bold hop presence.
Great Lakes Brewing|Elliot Ness|Vienna Lager|all|6.2|27|An amber lager with rich, fragrant malt flavors balanced by crisp, noble hops.
Great Lakes Brewing|Oktoberfest|Oktoberfest|fall|6.5|20|An amber lager with rich malt flavor balanced by fragrant noble hops.
Great Lakes Brewing|Rye of the Tiger|IPA|summer|7.5|92|This kitty has claws. Named for its one - two punch of fierce hops and sharp rye content, our Rye of the Tiger India Pale Ale is a thrilling ale with bite, handcrafted for the fighter in all of us.
Guiness|Guiness Stout|Irish Dry Stout|all|5|0|This is it, the one that started it all. Crafted to perfection for over 200 years. Crack it open, and the first sip tastes as fresh as ever. The unmistakeable deep-dark colour. The crisp hint of roasted barley, the fresh breeze of hops. The refreshing bite. The bittersweet reward. Pure beauty. Pure GUINNESS.
Harp|Harp Lager|European Pale Lager|all|5|21|The best selling premium irish import lager in the world today. This rich, golden pilsner style lager, with a smooth, refreshing hoppy taste, is brewed the irish way, using only the finest barley and pure spring water from the Cooley Mountains of Dundalk, Ireland.
Heineken|Heineken Lager|European Pale Lager|all|5|19|Heineken is a 5% ABV euro pale lager, made by Heineken International since 1873. It is available in a 4.3% alcohol by volume, in countries such as Ireland. It is the flagship product of the company and is made of purified water, malted barley, hops, and yeast. In 1886 H. Elion finished the development of the Heineken A-yeast. This is the yeast that is still used for the beer. The beer is force carbonated. It is popular in the United States, Europe and Middle Eastern countries.
Hoegaarden|Hoegaarden Blanche|Witbier|all|4.9|15|Spiced with coriander and orange peel.
Hofbrau|Hofbrau Original|German Lager|all|5.1|0|Hofbräuhaus is a symbol of Munich’s hospitality and the Bavarian gift for creating a snug and cosy atmosphere. Beer-lovers from all over the world come here to enjoy its famous beers. More than any other, Hofbräu Original embodies the special atmosphere of the beer-making capital of Munich, and exports it to the four corners of the globe. Its refreshing, bitter flavour and alcoholic content of around 5.1% volume have made it famous worldwide. A Munich beer with character.
Kentucky Brewing|Bourbon Barrel Ale|English Strong Ale|all|8.19|15|
Killians|Irish Red|American Amber Lager|all|4.9|0|Killian's Irish Red is a traditional lager with an authentic Irish heritage, based on the Killian family's recipe created for the Killian's brewery in Enniscorthy, Ireland in 1864. Coors acquired the rights to brew and market the product in America and Killian's was introduced to the U.S. in 1981. Killian's Irish Red derives its distinctive red-amber color and taste from a special caramel malt that has been roasted at a high temperature longer and more slowly than most malts. There are no coloring agents or artificial additives used in brewing Killian's. The brew is known for its rich amber color and thick, creamy head.
Kona|Big Wave Golden Ale|American Blonde Ale|all|4.4|5|Big Wave is light golden ale with a subtle fruitiness and delicate hop aroma. A smooth, easy drinking refreshing ale. The lightly roasted honey malt contributes to the golden hue of this beer and also gives a slight sweetness that is balanced out by our special blend of hops.
Kona|Longboard|American Pale Lager|all|4.6|20|A smooth refreshing lager fermented and aged for five weeks at cold temperatures to yield its exceptionally smooth flavor. A delicate, slightly spicy hop aroma complements the malty body of this beer.
Lagunitas|A little Sumpin Sumpin|American Pale Wheat Ale|all|7.5|64|A truly unique style featuring a strong hop finish on a silky body. A filtered pale wheat ale that is great for both IPA and wheat beer fans.
Lagunitas|Lagunitas IPA|IPA|all|6.2|46|This is our unique version of an ancient style. A style as old as the ocean trade routes of the last centuries Great Ships. Not as old as the equator they had to cross twice enroute
Landshark|Landshark Lager|American lager|all|4.7|0|
Left Hand|Milk Stout Nitro|Milk Stout|all|6|25|POUR HARD! Dark & delicious, America’s milk stout will change your perception about what a stout can be. Pouring hard out of the bottle, Milk Stout Nitro cascades beautifully, building a tight, thick head like hard whipped cream. The aroma is of brown sugar and vanilla cream, with hints of roasted coffee. The pillowy head coats your upper lip and its creaminess entices your palate. Initial roasty, mocha flavors rise up, with slight hop & roast bitterness in the finish. The rest is pure bless of milk chocolate fullness.
Leinenkugel|Cranberry Ginger Shandy|Fruit Beer|winter|4.2|11|Did you know the great state of Wisconsin produces more cranberries than any state in America? Our hometown pride inspired us to brew Leinenkugel’s® Cranberry Ginger Shandy. The combination of traditional wheat beer with natural cranberry flavor and a note of ginger is as refreshing as a toboggan ride Out Here. The flavor profile makes it a great pair for honey-glazed ham, brie cheese or a green salad with tart vinaigrette dressing.
Leinenkugel|Grapefruit Shandy|Fruit Beer|all|4.2|14|A traditional shandy is beer mixed with a little something extra, like lemonade, soda or ginger ale. Leinenkugel's® Grapefruit Shandy is our take on this tradition. Each batch begins with our traditional Weiss beer. We then combine it with natural white grapefruit flavor that adds a note of fresh-cut citrus to brighten a great day by the lake.
Leinenkugel|Oktoberfest|Oktoberfest|fall|5.1|20|Oktoberfest is arguably the world’s greatest festival. And our Leinenkugel’s® Oktoberfest is the perfect beer for anyone who wants to join in the festival’s spirit. A traditional Märzen-style beer, Leinenkugel’s Oktoberfest has a toasted malt flavor and subtle, spicy hop notes that make it perfect for celebrating fall in true German fashion. And of course, the perfect food to pair it with is traditional German fare like brats, spaetzles, and salty pretzels with mustard.
Leinenkugel|Snowdrift Vanilla Porter|American Porter|winter|6|16|Leinenkugel’s® Snowdrift Vanilla Porter® is a fuller-bodied beer brewed with roasted malts for a flavor with hints of cocoa, coffee and caramel. And it’s aged on real vanilla for a smooth, creamy taste that makes it perfect for warming up winter. Pair it with heavier foods like glazed ham with cherries, slow roasted meats, or sweet potato casserole.
Leinenkugel|Summer Shandy|Fruit Beer|summer|4.2|14|A shandy is beer mixed with a little something extra like soda, juice or ginger ale. Leinenkugel’s® Summer Shandy® is a traditional wheat beer with refreshing natural lemonade flavor that makes it perfect for the sun-splashed summer months. For a fun and fresh food pairing, try it with lighter, brighter foods like shrimp quesadillas, pan-seared scallops with lemon vinaigrette, or lemon chicken with pasta.
Leinenkugel|Sunset Wheat|Witbier|all|4.6|14|Get ready to settle in for a sunset. Our award-winning Belgian-style witbier, Leinenkugel’s® Sunset Wheat has notes of orange and blueberry, and a tart, citrusy finish. Add an orange wheel to the rim of your glass for a little extra note in the aroma that really enhances the beer’s citrus side. Sunset Wheat’s fruity character really cuts through spicy dishes, so pair it with flavors like lemon pepper chicken or Southwestern scallops.
Lindemans|Framboise|Fruit Lambic|all|2.5|12|Pours hazy, deep red with a small pink head. Raspberry dominates the aroma, with some hints of sour and wood as well. Sour raspberry also dominates the flavor profile, and tastes like I’m eating raspberry. Finishes with a long, sour linger, and some cloying sugars. Full body with a thick moutfeel and mild carbonation. Overall, this is the best fruit lambic I’ve had, and really tastes like I’m eating fresh raspberries. A great desert beer!
Lost Coast|Tangerine|Fruit Beer|all|5.5|15|A refreshing citrus ale, Tangerine Wheat combines our Lost Coast Harvest Wheat with natural Tangerine flavors. Brewed with a combination of wheat and crystal malts and finished with Perle hops.
Madtree|PsycHOPathy|American IPA|all|6.9|72|The subtle malt backbone combats the bitterness and intensity of floral, grassy, and citrus hop flavors. However, taste is perception. What’s your slant? Magic Hat|#9|Fruit Beer|all|5.1|20|\"A Beer Cloaked in Secrecy\" An ale whose mysterious and unusual palate will swirl across your tongue and ask more than it answers. A sort of dry, crisp, refreshing, not-quite pale ale. #9 is really impossible to describe because there's never been anything else quite like it. Our secret ingredient introduces a most unusual aroma profile which is balanced with a residual sweetness. Our gateway beer, # 9 is very accessible, appealing to a broad range of pallets.
Magic Hat|Pistil|Spiced Beer|spring|4.5|20|\"Stop and Smell the Petals\" The dandelion army emerges from the soggy soil under the cover of early dawn. Suppressed by winter forces, they’ve hunkered down for months, readying for the rising spring sun’s emphatic call to arms. Pistils are locked and seeds loaded for the timeless battle between seasons and earthbound souls that seek to be freed from confinement. Shots ring out in the dim light, buds burst above ground and spring advances into the promise of a new year. Pistil is a refreshing, sun-inspired spring ale. A subtle floral spiciness from Apollo and Northern Brewer hops is balanced by earthy notes from dandelion leaves, while acidulated malts provide a smooth, slightly sour malt body.
New Belgium|Fat Tire|Amber Ale|all|5.2|22|Belgian beers use a far broader palette of ingredients (fruits, spices, esoteric yeast strains) than other ales. This beer won fans with its sense of balance: toasty, biscuit-like malt flavors coasting in equilibrium with hoppy freshness.
New Belgium|Ranger IPA|IPA|all|6.5|70|Ever met a New Belgium Beer Ranger? They are our beloved folks out in the field. Spanning all 29 of our states from the Pacific to the Atlantic, our Beer Rangers do their best to protect, to pour and to partake. And explore many a beer from many a brewery, they do. 
Newcastle|Brown Ale|English Brown Ale|all|4.7|18|Newcastle Brown Ale is a brand of beer produced by Heineken International. The beer was introduced in 1927 in Newcastle upon Tyne, England, by Newcastle Breweries, which became Scottish & Newcastle in 1960. In 2005, brewing was moved out of Newcastle for the first time to the other side of the River Tyne, to Dunston in Gateshead. In 2009, it was announced that production would move to Tadcaster North Yorkshire.
Omission|Omission Lager|American Pale Lager|all|4.6|20|Gluten Free. Omission Lager is a refreshing and crisp beer, brewed in the traditional lager style. Perfect for a variety of beer drinking occasions, Omission Lager’s aromatic hop profile offers a unique, easy-drinking beer for those looking for a lighter and approachable beer style.
Pacifico|Clara|American Lager|all|4.5|0|Cerveza Pacífico Clara, better known as Pacifico, is a Mexican pilsner-style beer. It was first brewed in 1900 when three Germans opened a brewery, the Cerveceria del Pacífico in Mazatlán. Cerveza Pacifico is named so because the Pacifico brewery is located in the Pacific Ocean port city of Mazatlán, in the state of Sinaloa, México. Its label includes a picture depicting a lifesaver encompassing a hill with the port's lighthouse, known locally as \"Cerro del Crestón.\"
Peroni|Nastro Azzurro|European Pale Lager|all|5.1|0|Peroni Nastro Azzurro is 5.1% in alcohol by volume. The beer was crafted with typical Italian care, and designed with the Mediterranean palate in mind. Roberto is the third generation from the Cavalli family to be master brewers for Birra Peroni, ensuring the high quality and standards of the beer. Italian passion, attention to detail and craftsmanship are the ingredients that now, and forever, will ensure the superior and authentic Italian taste of Peroni Nastro Azzurro.
Red Stripe|Red Stripe Lager|American Lager|all|0|0|
Revolution Brewing|Fistmas|Spiced Beer|winter|6.1|31|Red ale brewed for the holiday season with specialty malts to achieve a beautiful deep red hue and the aromas of fresh baked bread, caramel, and stone fruits. Steeped with ginger root and orange peel.
Rouge|Dead Guy Ale|Bock|all|6.5|40|Tasting Notes: In the style of a German Maibock, using our proprietary Pacman ale yeast. Deep honey in color with a malty aroma and a rich hearty flavor.
Samuel Adams|Boston Lager|Vienna Lager|all|4.9|30|Samuel Adams Boston Lager® is the best example of the fundamental characteristics of a great beer, offering a full, rich flavor that is both balanced and complex. It is brewed using a decoration mash, a time consuming, traditional four vessel brewing process discarded by many contemporary brewers. This process brings forth a rich sweetness from the malt that makes it well worth the effort. Samuel Adams Boston Lager® also uses only the finest of ingredients including two row barley, as well as German Noble aroma hops. The exclusive use of two row barley not only imparts a full, smooth body but also gives the beer a wide spectrum of malt flavor ranging from slightly sweet to caramel to slightly roasted. The Noble hops varieties, Hallertau Mittelfruh and Tettnang Tettnanger, add a wide range of floral, piney and citrus notes, which are present from the aroma, through the flavor, to the lingering smooth finish. We take great pride in the Noble hops used in our beers. They are hand selected by Jim Koch and our other brewers from the world's oldest hops growing area. Among the world's most expensive, they cost twenty times as much as other hops.
Samuel Adams|Cherry Wheat|Fruit Beer|all|5.3||Ale brewed with Cherries, crisp and fruity with a hint of honey. Samuel Adams Cherry Wheat® follows the centuries old American tradition of brewing beer with native ingredients, in this case Michigan cherries as well as a touch of honey. The sweet fruitiness of the cherries is balanced against the crisp, cereal note from the malted wheat and the subtle citrus flavor from the Noble hops. The end result is a sweet, refreshing beer that is light on the palate but long on complexity.
Samuel Adams|Octoberfest|Oktoberfest|fall|5.3|16|In 1810, the Oktoberfest tradition was born when Munich celebrated the Crown Prince’s wedding with a special beer and 16 day party. Our version of this classic style blends rich malts for a hearty, smooth flavor with notes of caramel creating a brew that’s perfect for the season, or whatever you’re celebrating. 
Samuel Adams|Summer Ale|American Pale Wheat Ale|summer|5.3|7|Samuel Adams® Summer Ale is an American wheat ale. This hazy golden unfiltered brew combines crisp wheat with the bright citrus of lemon peel and the subtle spice of Grains of Paradise. This rare African pepper, closely related to cardamom, was first used as a brewing spice in the 13th Century and adds just the right peppery kick. All of these flavors come together to create a thirst quenching and utterly refreshing brew perfect for those warm summer days.
Samuel Adams|Winter Lager|Bock|winter|5.6|22|Bold and rich, with a touch of holiday spice
The first thing one notices in a Samuel Adams® Winter Lager is its color: the deep brown of winter. Then comes the magical aroma which promises something special on the tongue. The warm aroma of cinnamon and ginger which blends with the toasty sweetness of the malted barley and hint of citrus.
Samuel Smiths|Nut Brown Lager|English Brown Ale|all|5|0|
Samuel Smiths|Oatmeal Stout|Oatmeal Stout|all|5|0|Brewed with well water (the original well at the Old Brewery, sunk in 1758, is still in use, with the hard well water being drawn from 85 feet underground); fermented in ‘stone Yorkshire squares’ to create an almost opaque, wonderfully silky and smooth textured ale with a complex medium dry palate and bittersweet finish.
Shiner|Shiner Bock|Bock|all|4.4|13|Bock reflects the tradition of genuine Bavarian beers as a brew only a craftsman like Kosmos Spoetzl, trained in the \"Old Country,\" could bring to life. With its deep amber color, distinctive rich flavor and full body, Shiner Bock demonstrates the care of a handcrafted brewing process to bring forth a mellow taste free of the bitter aftertaste found in many micro, specialty and imported beers. Just think of it as Shiner smooth.
Sierra Nevada|Pale Ale|American Pale Ale|all|5.6|37|Our most popular beer, Sierra Nevada Pale Ale is a delightful interpretation of a classic style. It has a deep amber color and an exceptionally full-bodied, complex character. Generous quantities of premium Cascade hops give the Pale Ale its fragrant bouquet and spicy flavor.
Sierra Nevada|Torpedo|American IPA|all|7.2|65|Sierra Nevada Torpedo Ale is a big American IPA; bold, assertive and full of flavor and aromas highlighting the complex citrus, pine and herbal character of whole-cone American hops. Our obsession with harnessing huge hop flavor led to the development of what we call the hop torpedo, a revolutionary method of dry-hopping designed, built, and debuted here at the brewery. Our torpedo is a sleek, stainless-steel piece of hardware that delivers more pure hop aroma than any method of dry-hopping we’ve ever seen.
Smith and Forge|Hard Cider|Hard Cider - gluten free|all|6||
Smithwicks|Irish Red|Irish Red Ale|all|4.5|0|Smithwick's is a clear beer with a rich ruby color and creamy head. Clean and delicate aroma with different individual notes: from the top fermentation by the Smithwick yeast come aromatic esters creating a fruity aroma. The Aroma Hops added late in the boil contribute clean fresh floral notes. Ale Malt contributes aroma hints of biscuit and caramel. 
Refreshing and clean taste with a gentle balance of bitterness from the hops added early in the boil, sweet/malty notes from the ale malt, and hints of roast/coffee from the roasted barley.
Southern Tier|Souther Tier IPA|IPA|all|7.3|60|IPA stands for India Pale Ale and ours is an American version of the classic style. IPA's namesake lies in its colonial roots. British soldiers on their way to India drank a lot of beer, but found it would go stale on the long voyages. Meanwhile, brewers knew that by adding more hops the beer would stay fresh. Voila! A new style was born and it is one we are proud to brew. Southern Tier IPA is triple-hopped on its journey to your glass for a fully aromatic experience.
Southern Tier|Pumking|Pumpkin Ale|fall|8.6|30|COLOR: Deep copper; EFFERVESCENCE: Medium carbonation; NOSE: Pumpkin, pie spices, buttery crust, vanilla, roasted pecans; FLAVOR: Malty sweetness, vanilla, clove, allspice, cinnamon, nutmeg, pie crust; BITTERNESS: Low; BODY: Medium-light
St. Pauli Brauerei|St. Pauli Girl|German Pilsner|all|4.9||
Stella Artois|Stella Artois|European Pale Lager|all|5.2|24|Stella Artois was first brewed as a Christmas beer in Leuven. It was named Stella from the star of Christmas, and Artois after Sebastian Artois, founder of the brewery. It is brewed to perfection using the original Stella Artois yeast and the celebrated Saaz hops. It is the optimum premium lager, with its full flavour and clean crisp taste.
Stone|Arrogant Bastard|American Strong Ale|all|
Stone|Stone IPA|American IPA|all|6.9|77|By definition, an India Pale Ale is hoppier and higher in alcohol than its little brother, pale ale — and we deliver in spades. Now one of the most well respected and best-selling IPAs in the country, this golden beauty explodes with citrusy flavor and hop aromas, all perfectly balanced by a subtle malt character. This crisp, extra hoppy brew is hugely refreshing on a hot day, but will always deliver no matter when you choose to drink it.
Heineken|Strongbow Cider|Hard Cider|all|5.3|0|
SweetWater Brewing|420|American Pale Ale|all|5.7|41|SweetWater 420 Extra Pale Ale, our most popular brew, is a tasty West Coast Style Pale Ale with a stimulating hop character and a crisp finish. 1st brewed on April 20th 1997.
SweetWater Brewing|Hop Hash|Double IPA|all|7.8|100|We scraped all the HASH out of the Yakima hop pelletizers that we could get our sticky fingers on to concoct the dankest double IPA out there. The pure hop lupulin, AKA “HASH” (the resiny stuff!), meshes seamlessly with the 2-row, pilsner and wheat malts, allowing it to deliver a pungent punch to the palate.
Thirsty Dog|12 Dogs of Christmas|Winter Warmer|winter|8.3|21|This beer’s name sums up the ideas of bringing the best together to celebrate. It is filled with seasonal flavors from generous amounts of toasted and caramel malts, mixed with equally generous amounts of honey, cinnamon, ginger and nutmeg. We feel it is the perfect libation, filled with flavors of the season.
Thirsty Dog|Old Leghumper|American Porter|all|5.8|24|This robust porter is dark brown in color and full bodied with a malty sweet taste. Deep roasted, yet silky smooth! Two types of roasted malts, including roasted chocolate malt give this beer it's award winning flavor.
Thirsty Dog|Pumpkin Ale|Pumpkin Ale|fall|5|0|Brewed with summer’s harvest of pumpkin, squash, honey, ginger, and love of great beers.
Thirsty Dog|Raspberry Ale|Fruit Beer|all|3.9|7|
Heineken Asia Pacific|Tiger Lager|American Lager|all|5||Brewed in Singapore since 1932, Tiger Beer is a full-flavored, pilsner-style golden lager with a slightly sweet note and an amazingly clean finish. 2010 World Beer Cup Gold Medal (international style lager).
Woodchuck|Hard Cider|Hard Cider - Gluten Free|all|6|0|Woodchuck® Hard Cider Private Reserve Pumpkin is a true connoisseur’s cider. Limited to only two and a half hours on the production line. It’s fresh and crisp with pumpkin at the finish and crafted to be served at 45 degrees for the rich flavors to show through. It pairs perfectly with roasted duck, turkey, squash ravioli as well as crème brulee and fresh cheesecake. Naturally gluten-free, this ultra limited release is produced once a year in both six-pack and on draft.
Youngs|Double Chocolate Stout|Milk Stout|all|5.2|25|The original dark beer brewed with real chocolate.
Yuengling|Yuengling IPL|American Pale Lager|winter|5|60|Yuengling® is proud to introduce its IPL, a brew bursting with complex hop notes like an IPA but with a well-balanced lager base that allows the Bravo, Belma, Cascage and Citra hops to truly shine.
Yuengling|Yuengling Oktoberfest|Oktoberfest|fall|5.4|0|Copper in color, this medium bodied beer is the perfect blend of roasted malts and just the right amount of hops to capture a true representation of the style."

@beers = []

def add_beer(beer_string, id = 0)
	split_beer_string = beer_string.split '|'
	@beers << {:id => id, :brewery => split_beer_string[0], 
		:beer => split_beer_string[1], 
		:style => split_beer_string[2], 
		:season => split_beer_string[3],
		:abv => split_beer_string[4].to_f,
		:ibu => split_beer_string[5].to_f,
		:description => split_beer_string[6]}
end

def try_int_convert(val)
	if obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil
		return val
	else
		return val.to_i
	end
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
