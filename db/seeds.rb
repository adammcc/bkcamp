Article.delete_all
HomeImage.delete_all
s3_path = HomeImage.s3_path

info = {
  finger_lakes: {
    src: "#{ s3_path }finger_lakes/finger_lakes_upstate_bug.JPG",
    alt: "bug",
    title: "The Finger Lakes, NY",
    main_blurb: "Formed two million years ago by continental glaciers, the finger lakes are now the home of the $5 wine tasting, stunning beauty, and understated locals - they’re the low cost, unpretentious Napa Valley of New York.",
    filter: "getayways",
    article_type: "gallery",
    feature_article: "false",
    feature_img_src: "#{ s3_path }finger_lakes/feature_image/finger_lakes_upstate_bug_feature.JPG",
    pics: [
      [
        "#{ s3_path }finger_lakes/finger_lakes_upstate_bug.JPG",
        "#{ s3_path }finger_lakes/thumbs/finger_lakes_upstate_bug__thumb.JPG",
        "Admire a vintage VW as your sip on vintages at Atwater Vineyards along Seneca Lake. There’s something for everyone, and a $3 tasting paid with a five will score you a $2 bill in change. Don’t miss the standout Rieslings and simple tasting room at the nearby <a href='http://rednewt.com/ww4/' target='_blank'>Red Newt</a> , and finish your tour with superior Viennese grub at <a href='http://www.danosonseneca.com/' target='_blank'>Dano’s Heuriger</a> in Lodi."
      ],
      [
        "#{ s3_path }finger_lakes/finger_lakes_skaneateles.JPG",
        "#{ s3_path }finger_lakes/thumbs/finger_lakes_skaneateles__thumb.JPG",
        "The town of Skaneateles is as pristine, crisp and teeming with effortless beauty as the lake that shares its name. Admire some of the cleanest water in the country up close at <a href='https://www.google.com/maps/place/Thayer+Park/@42.945447,-76.4260735,3a,75y,181.78h,84.9t/data=!3m6!1e1!3m4!1sXvLT-EcXgTUDxo_-6gEkUg!2e0!7i13312!8i6656!4m2!3m1!1s0x0:0x7d0a6438841a79e6!6m1!1e1' target='_blank'>Thayer Park</a> or rent a boat at the <a href='http://www.skanmarina.com/' target='_blank'>Marina</a>. Continue the pursuit of life’s simple pleasures at  <a href='http://www.dougsfishfry.com/' target='_blank'>Doug’s Fish Fry</a>."
      ],
      [
        "#{ s3_path }finger_lakes/finger_lakes_ithaca_beer.JPG",
        "#{ s3_path }finger_lakes/thumbs/finger_lakes_ithaca_beer__thumb.JPG",
        "Kids let loose on the big lawn at <a href='http://ithacabeer.com/' target='_blank'>Ithaca Beer Company</a>, home of world-class brews, casual grub, and free brewery tours. IBC is most known for its Flower Power, a full-bodied IPA that clocks in at 7.5% ABV. Seasonal specials and fixtures like the “easy-drinking” Green Trail are less vivid on the tongue but equally impressive."
      ],
      [ "#{ s3_path }finger_lakes/finger_lakes_boat_dock.JPG",
        "#{ s3_path }finger_lakes/thumbs/finger_lakes_boat_dock__thumb.JPG",
        "Boats docked at Watkins Glen at the foot of Seneca Lake."
      ],
      [
        "#{ s3_path }finger_lakes/finger_lakes_stone_path.JPG",
        "#{ s3_path }finger_lakes/thumbs/finger_lakes_stone_path__thumb.JPG",
        "Walk through the gorge at the magical <a href='http://nysparks.com/parks/142/details.aspx' target='_blank'>Watkins Glen State Park</a>."
      ],
      [
        "#{ s3_path }finger_lakes/finger_lakes_picnic.JPG",
        "#{ s3_path }finger_lakes/thumbs/finger_lakes_picnic__thumb.JPG",
        "Take in the view and try to resist concocting plans to quit your job, buy a little house and become a <a href='http://flcc.edu/academics/viticulture/' target='_blank'>vintner</a>. "
      ],
      [
        "#{ s3_path }finger_lakes/finger_lakes_lake_and_flower.JPG",
        "#{ s3_path }finger_lakes/thumbs/finger_lakes_lake_and_flower__thumb.JPG",
        "Enough said."
      ]
    ]
  },
  livingston_manor: {
    src: "#{ s3_path }livingston_manor/livingston_manor__fire.jpeg",
    alt: "livingston_manor",
    title: "Livingston Manor",
    main_blurb: "",
    filter: "getayways",
    article_type: "gallery",
    feature_article: "false",
    pics: [
      [
        "#{ s3_path }livingston_manor/livingston_manor__fire.jpeg",
        "#{ s3_path }livingston_manor/livingston_manor__fire.jpeg",
        "Check into the Arnold House, a cozy inn at the top of a hill four miles from downtown Livingston Manor. The details that will make you swear you’ll come back: an inviting sunroom outfitted with couches, cozy fire and Pendleton blankets; Malin + Goetz products in every room; and make-your-own-waffles at the included breakfast. And you needn’t venture far for a good dinner: the spiral staircase delivers you to a tavern downstairs. Don’t miss the grilled romaine."
      ],
      [
        "#{ s3_path }livingston_manor/livingston_manor__bakery.jpeg",
        "#{ s3_path }livingston_manor/livingston_manor__bakery.jpeg",
        "Brandenburg Bakery is a great bet for giant croissants, breads and sweets. At $12 a pop, the pies are the best deal in town and some of the best we’ve had, with a unique shortbread-like crust. Try to appreciate the slower pace of the staff. What’s the rush?"
      ],
      [
        "#{ s3_path }livingston_manor/livingston_manor__town_and_country.jpeg",
        "#{ s3_path }livingston_manor/livingston_manor__town_and_country.jpeg",
        "The retro signs in the nearby town of Liberty hint at times gone by. Go treasure hunting at Town and Country Antiques, right in the middle of town. If getting arrested is your idea of a good vacation story, visit (read: trespass into) the grounds of the decaying Grossinger’s resort, a haunting relic of the Dirty Dancing Catskills resort era."
      ],
      [
        "#{ s3_path }livingston_manor/livingston_manor__catskill_beer.jpeg",
        "#{ s3_path }livingston_manor/livingston_manor__catskill_beer.jpeg",
        "Upstate is home to a growing portfolio of breweries. The barn-like Catskill Brewery, right in Livingston Manor, has a modern tasting room with a great view of the tanks. Standouts include the sessionable Floodwatch IPA and surprisingly hoppy and complex Ball Lightning pilsner."
      ],
      [
        "#{ s3_path }livingston_manor/livingston_manor__furniture.jpeg",
        "#{ s3_path }livingston_manor/livingston_manor__furniture.jpeg",
        "Visit antique furniture shop Domesticities in the tiny town of Youngsville and try to figure out how you’ll get that Hoosier cabinet back to Brooklyn. The front of the store has local and international products with a focus on fair trade. Check out the simple greeting cards."
      ],
      [
        "#{ s3_path }livingston_manor/livingston_manor__clair_inn.jpeg",
        "#{ s3_path }livingston_manor/livingston_manor__clair_inn.jpeg",
        "Walk next door to the Clair Inn and Cafe and grab a brew and a bite in their inviting taproom. Try the breakfast (served late) or burger. "
      ]
    ]
  },
  hard_cooked_eggs: {
    src: "#{ s3_path }hard_cooked_eggs/hard_cooked_egg.jpg",
    alt: "hudson_standard_shrub",
    title: "Hard Cooked Eggs",
    main_blurb: "",
    filter: "recipes",
    article_type: "slide_show",
    feature_article: "false",
    blurb: "<p>When I was a kid, hard boiled eggs were eaten exclusively in the days following Easter. I would painstakingly remove the decorated shells to reveal whites marbled by thin branches of bright dye. They were invariably tough, the yellows chalky and sulfuric.</p> <br> <p>In my adult life, these rubbery orbs appeared most often as the mediocre supporting cast members of cobb salads, or deviled into the prettier sister who had a lot of help. At home, I prepared them by vigorous boil or the even lazier process of steeping in just-boiled water for 18 minutes.</p> <br> <p>Then, Alice Waters’s The Art of Simple Food showed me the light - that is, the deeply delicious sunshine that is a golden, just-set yolk at the center of a hard boiled egg. She calls them “hard cooked” because boiling has little place in her method. Do this and up the game of any salad or pile of grains & greens, or just crack one open and eat with a sprinkle of salt and pepper. </p>",
    instructions: [],
    recipe: [
      "<dt><strong>Hard-Cooked Eggs</strong></dt>",
      "<dd><i>Adapted from The Art of Simple Food by Alice Waters</i></dd>",
      "<dd>Bring a pot of water to a boil.</dd>",
      "<dd>Reduce to a simmer and gently add the eggs with a slotted spoon.</dd>",
      "<dd>Tinker with the temperature so that the water is just below a simmer. Cook for 9 minutes. (Stay close by to adjust the temperature if needed.)</dd>",
      "<dd>Promptly remove the eggs and cool in ice water.</dd>",
      "<dd>When they’re cool, crack them all over and remove the shells.</dd>"
    ],
    pics: [
      "#{ s3_path }hard_cooked_eggs/hard_cooked_egg.jpg",
    ]
  },
  masala_crunch: {
    src: "#{ s3_path }masala_crunch/masala_crunch__spices.JPG",
    alt: "masala_crunch",
    title: "Masala Crunch",
    main_blurb: "",
    filter: "recipes",
    article_type: "slide_show",
    feature_article: "false",
    blurb: "<p>Bacon bits were one of the best things about salad bars in the 80’s. They added a crunchy, salty zing to any standard iceberg-shredded carrot-grape tomato combo. Salads have become way more sophisticated, but crunchy toppings have not. Enter this healthy, multi-dimensional crispy deliciousness - a savory granola of sorts that can be added to any number of dishes, from salads to pasta to eggs to cooked veggies. This is a great way to use leftover cooked quinoa and stale puffed cereal. We got the basic recipe from a friend of a friend (thanks Bess in Oakland!). The coconut flakes and spice mix - a basic garam masala - were additions inspired by a recent trip to India. You can swap these out for other flavors. We’ve listed some suggested twists at the bottom of the recipe.</p><br><strong>Variations:</strong><p>Replace the coconut flakes and spices with the below combinations for another twist.</p><br> <h5>Poppy crunch</h5> <p>3 tablespoons poppy seeds, 1 tablespoon dijon mustard, 2 cloves minced garlic</p><br> <h5>Seedy crunch</h5><p>¼ cup pumpkin seeds, ¼ cup sunflower seeds, 2 tsp soy sauce, 1 tsp Worcestershire sauce (add an extra tablespoon of olive oil)</p><p>Egyptian crunch: ¼ cup finely chopped pistachios, ¼ cup sesame seeds, ½ tsp ground coriander, ½ tsp ground cumin, ¼ tsp ground black pepper, ¼ tsp salt (add an extra tablespoon of olive oil)</p>",
    instructions: "<strong>Instructions</strong><p>Heat oven to 350 degrees.</p> <p>Mix dry ingredients in a large bowl.</p> <p>Add olive oil and mix until well combined.</p> <p>Spread the mixture on a rimmed baking sheet.</p> <p>Bake for 30-35 minutes, mixing once or twice during baking.</p> <p>Let cool completely before eating.</p><br>",
    recipe: [
      "<dt><strong>Masala Crunch</strong></dt>",
      "<dd>2 cups cooked quinoa</dd>",
      "<dd>1 cup puffed millet, rice, or other grain</dd>",
      "<dd>1/2 cup almond meal (we like Bob’s Red Mill brand)</dd>",
      "<dd>1/4 - 1/3 cup coconut flakes</dd>",
      "<dd>1/2 tsp ground cumin</dd>",
      "<dd>1/2 tsp ground black pepper</dd>",
      "<dd>1/4 tsp ground coriander</dd>",
      "<dd>1/4 tsp ground cardamom</dd>",
      "<dd>1/4 tsp ground cinnamon</dd>",
      "<dd>1/8 tsp ground nutmeg</dd>",
      "<dd>1/4 - 1/2 tsp fine sea salt (or to taste)</dd>",
      "<dd>1/4 cup high quality extra virgin olive oil</dd>",
    ],
    pics: [
      "#{ s3_path }masala_crunch/masala_crunch__spices.JPG",
      "#{ s3_path }masala_crunch/masala_crunch__three.JPG",
      "#{ s3_path }masala_crunch/masala_crunch__jar.JPG",
      "#{ s3_path }masala_crunch/masala_crunch__bowl.JPG",
      "#{ s3_path }masala_crunch/masala_crunch__before_oven.JPG",
    ]
  },
  filson: {
    src: "#{ s3_path }filson/filson_1.JPG",
    alt: "filson_bag",
    title: "Filson Duffle",
    main_blurb: "This has been my goto weekend bag for the past two years. It’s rugged, beautiful, and built to last.",
    filter: "things",
    article_type: "slide_show",
    feature_article: "true",
    feature_img_src: "#{ s3_path }filson/feature_image/filson_1.JPG",
    blurb: "My previous duffle was a freebie from work - a thick, cheap red nylon bag with the name of my employer emblazoned on the side pocket. Ugly as it was, it did the job, shuttling my spare weekend wardrobe to and from the city on multiple getaways. Once synthetic crumbles started showing up on my clothing, I knew I needed something a little more durable. Enter the <a href='http://www.filson.com/luggage-bags/duffle-bags/duffle-bag-small.html' target='_blank'>Filson Duffle</a> (size small), made of tan water resistant twill and Guinness-black adjustable leather straps. This may be the last bag you’ll ever need to buy: It’s durable, structured, and the perfect size for Friday-Sunday voyages anywhere and in any season. And once in awhile, you’ll enjoy the embedded compliment of being stopped by a stranger who asks you where they can get one.",
    recipe: [],
    instructions: [],
    pics: [
      "#{ s3_path }filson/filson_1.JPG",
      "#{ s3_path }filson/filson_2.JPG",
      "#{ s3_path }filson/filson_3.JPG",
      "#{ s3_path }filson/filson_4.JPG",
      "#{ s3_path }filson/filson_5.JPG"
    ]
  },
  mohonk: {
    src: "#{ s3_path }mohonk/mohonk_hills.JPG",
    alt: "mountain house",
    title: "Mohonk Mountain House",
    main_blurb: "",
    filter: "getayways",
    article_type: "slide_show",
    feature_article: "false",
    blurb: "ay yo",
    recipe: [],
    instructions: [],
    pics: [
      "#{ s3_path }mohonk/mohonk_hills.JPG",
      "#{ s3_path }mohonk/mohonk_lake.JPG",
      "#{ s3_path }mohonk/mohonk_fronk.JPG",
      "#{ s3_path }mohonk/mohonk_path.JPG",
      "#{ s3_path }mohonk/mohonk_back_view.JPG",
      "#{ s3_path }mohonk/mohonk_fish.JPG",
      "#{ s3_path }mohonk/mohonk_horses.JPG",
      "#{ s3_path }mohonk/mohonk_mountian_view.JPG",
      "#{ s3_path }mohonk/mohonk_path_2.JPG",
      "#{ s3_path }mohonk/mohonk_sunset_hut.JPG",
      "#{ s3_path }mohonk/mohonk_sunset_tower.JPG",
      "#{ s3_path }mohonk/mohonk_sunset.JPG",
    ]
  },
  new_haven: {
    src: "#{ s3_path }new_haven/new_haven_grass.JPG",
    alt: "new haven ct",
    title: "New Haven CT",
    main_blurb: "",
    filter: "getayways",
    article_type: "gallery",
    feature_article: "false",
    pics: [
      [
        "#{ s3_path }new_haven/new_haven_grass.JPG",
        "#{ s3_path }new_haven/thumbs/new_haven_grass__thumb.JPG",
        "This works!!"
      ],
      [
        "#{ s3_path }new_haven/new_haven_apizza.JPG",
        "#{ s3_path }new_haven/thumbs/new_haven_apizza__thumb.JPG",
        "This works!!"
      ],
      [
        "#{ s3_path }new_haven/new_haven_buildings.JPG",
        "#{ s3_path }new_haven/thumbs/new_haven_buildings__thumb.JPG",
        "This works!!"
      ],
      [
        "#{ s3_path }new_haven/new_haven_beach_grass.JPG",
        "#{ s3_path }new_haven/thumbs/new_haven_beach_grass__thumb.JPG",
        "This works!!"
      ],
      [
        "#{ s3_path }new_haven/new_haven_apizza_oven.jpg",
        "#{ s3_path }new_haven/thumbs/new_haven_apizza_oven__thumb.jpg",
        "This works!!"
      ],
      [
        "#{ s3_path }new_haven/new_haven_boat_dock.JPG",
        "#{ s3_path }new_haven/thumbs/new_haven_boat_dock__thumb.JPG",
        "This works!!"
      ],
      [
        "#{ s3_path }new_haven/new_haven_barn.JPG",
        "#{ s3_path }new_haven/thumbs/new_haven_barn__thumb.JPG",
        "This works!!"
      ],
      [
        "#{ s3_path }new_haven/new_haven_creek.JPG",
        "#{ s3_path }new_haven/thumbs/new_haven_creek__thumb.JPG",
        "This works!!"
      ]
    ]
  },
  hoot: {
    src: "#{ s3_path }hoot/hoot.JPG",
    alt: "hoot",
    title: "Hoot Festival",
    main_blurb: "",
    filter: "getayways",
    article_type: "gallery",
    feature_article: "false",
    pics: [
      [
        "#{ s3_path }hoot/hoot.JPG",
        "#{ s3_path }hoot/thumbs/hoot_thumb.JPG",
        "How about this!!!!"
      ]
    ]
  },
  shrub: {
    src: "#{ s3_path }shrub/hudson_standard_shrub.jpg",
    alt: "hudson_standard_shrub",
    title: "The Hudson Standard Shrub",
    main_blurb: "",
    filter: "recipes",
    article_type: "slide_show",
    feature_article: "false",
    blurb: "<p>Leave it to makers in cool Hudson, NY to make a colonial era drink hip again. Shrubs - fruit syrups spiked with vinegar and sweetened with sugar - might be the best thing to happen to cocktail enthusiasts and teetotalers alike. Combine any of the delicious shrubs produced by The Hudson Standard with alcohol or simply dilute with seltzer for a complex drink that is delightfully acidic and sweet. </p> <br> <p>Our favorite “drinking vinegar” cocktail is the Root and Branch. The recipe below comes straight from <a href='http://thehudsonstandard.com/' target='_blank'>The Hudson Standard’s website</a>, using gin and their Pear Honey Ginger shrub (you can buy some for yourself through their online store). This one is good any time of year. </p>",
    instructions: [],
    recipe: [
      "<dd><strong>Root and Branch</strong> </dd>",
      "<dd>1 3/4 oz. Ransom (Old Tom) Gin</dd>",
      "<dd>3/4 oz. Pear Honey Ginger Shrub</dd>",
      "<dd>1/4 oz. Dolin Dry Vermouth</dd>",
      "<dd>2 Dashes of Orange Bitters</dd>",
      "<dd>Combine ingredients in a cocktail shaker. Fill with ice. Shake vigorously and pour into a chilled coup. Serve with a lemon twist.<dd>"
    ],
    pics: [
      "#{ s3_path }shrub/hudson_standard_shrub.jpg",
    ]
  },
  bear_mountain: {
    src: "#{ s3_path }bear_mountain/bear_mountain_lake.JPG",
    alt: "bear_mountain_lake",
    title: "Bear Mountain",
    main_blurb: "",
    filter: "getayways",
    article_type: "gallery",
    feature_article: "false",
    pics: [
      [
        "#{ s3_path }bear_mountain/bear_mountain_lake.JPG",
        "#{ s3_path }bear_mountain/thumbs/bear_mountain_lake__thumb.JPG",
        "This works!!"
      ]
    ]
  },
  hudson_winter_walk: {
    src: "#{ s3_path }hudson/hudson_winter_walk.JPG",
    alt: "hudson_winter_walk",
    title: "Hudson, NY - Winter Walk",
    main_blurb: "",
    filter: "getayways",
    article_type: "gallery",
    feature_article: "false",
    pics: [
      [
        "#{ s3_path }hudson/hudson_winter_walk.JPG",
        "#{ s3_path }hudson/thumbs/hudson_winter_walk__thumb.JPG",
        "This works!!"]
    ]
  },
  nyack: {
    src: "#{ s3_path }nyack/nyack_hook_mt_tree.JPG",
    alt: "upstate_scene",
    title: "Nyack, NY",
    main_blurb: "",
    filter: "getayways",
    article_type: "gallery",
    feature_article: "false",
    pics: [
      [
        "#{ s3_path }nyack/nyack_hook_mt_tree.JPG",
        "#{ s3_path }nyack/thumbs/nyack_hook_mt_tree__thumb.JPG",
        "This works!!"
      ]
    ]
  },
  storm_king: {
    src: "#{ s3_path }storm_king/storm_king_tree.JPG",
    alt: "barn",
    title: "Storm King",
    main_blurb: "",
    filter: "getayways",
    article_type: "slide_show",
    feature_article: "false",
    blurb: "
    <p>If you grew up in the New York metro area, you may remember field trips to <a href='http://stormking.org/' target='_blank'>Storm King Art Center</a>, a massive sculpture park in Orange County, about an hour north of the city. It’s an easy day trip via ZipCar, Metro North, NJ Transit or bus. It’s also a nice stop on those Sunday drives back to the city when you want to make your upstate weekend last a little longer. It pairs perfectly with a stay at the nearby historic <a href='http://stormking.org/' target='_blank'>Storm King Art Center</a>, which is how we did it during a sunny fall weekend.</p><br>
    <p>Forget what you know about outdoor art. Visiting majestic sculptures on Storm King’s 500 acres of rolling hills, fields and woodlands is an experience like no other. Many of the large, industrial pieces feel like alien debris, or relics from a dystopian past, or simple but equally fascinating explorations of shape, physics, perception and material.</p><br>
    <p>Storm King’s biggest draw might be the interplay of focal points and space. Each sculpture draws viewers in like a magnet, while the vast property invites them to stretch out. You’ll need at least a few hours to walk around the grounds. You won’t see everything in one visit, which is good because you’ll want to come back. Some of our favorite stops: Storm King Wall by Andy Goldsworthy; The Arch by Alexander Calder; Mirror Fence by Alyson Shotz; Suspended by Menashe Kadishman; Storm King Wavefield by Maya Lin; Sea Change by George Cutts; and Pyramidian by Mark di Suvero.</p><br>
    ",
    recipe: [],
    instructions: [],
    pics: [
      "#{ s3_path }storm_king/storm_king_tree.JPG",
      "#{ s3_path }storm_king/storm_king_rust_box.JPG",
      "#{ s3_path }storm_king/storm_king_straw.JPG",
      "#{ s3_path }storm_king/storm_king_triangle.JPG",
      "#{ s3_path }storm_king/storm_king_red_left.JPG",
      "#{ s3_path }storm_king/storm_king_red_center.JPG",
      "#{ s3_path }storm_king/storm_king_view.JPG",
      "#{ s3_path }storm_king/storm_king_rust_close.JPG",
      "#{ s3_path }storm_king/storm_king_shadows.JPG",
      "#{ s3_path }storm_king/storm_king_wall.JPG",
      "#{ s3_path }storm_king/storm_king_bright.JPG",
      "#{ s3_path }storm_king/storm_king_curvy.JPG"
    ]
  },
  scotland: {
    src: "#{ s3_path }scotland/scotch_old_man_store.jpg",
    alt: "old_man_store",
    title: "Scotland!",
    main_blurb: "",
    filter: "treks",
    article_type: "gallery",
    feature_article: "false",
    pics: [
      [
        "#{ s3_path }scotland/scotch_old_man_store.jpg",
        "#{ s3_path }scotland/thumbs/scotch_old_man_store__thumb.jpg",
        "This works!!"
      ],
      [
        "#{ s3_path }scotland/scotch_st_andrews.JPG",
        "#{ s3_path }scotland/thumbs/scotch_st_andrews__thumb.JPG",
        "T-bone hamburger chuck, salami tongue short loin turkey biltong cow meatball tenderloin ball tip doner alcatra jowl."
      ],
      [ "#{ s3_path }scotland/scotch_loch_boats.JPG",
        "#{ s3_path }scotland/thumbs/scotch_loch_boats__thumb.JPG",
        "This works too!!"
      ],
      [
        "#{ s3_path }scotland/scotch_gate.JPG",
        "#{ s3_path }scotland/thumbs/scotch_gate__thumb.JPG",
        "Leberkas porchetta ball tip, biltong chicken turducken venison corned beef. Drumstick tail meatloaf turkey pancetta shank."
      ],
      [
        "#{ s3_path }scotland/schotch_green_hills.JPG",
        "#{ s3_path }scotland/thumbs/schotch_green_hills__thumb.JPG",
        "T-bone hamburger chuck, salami tongue short loin turkey biltong cow meatball tenderloin ball tip doner alcatra jowl."
      ],
      [
        "#{ s3_path }scotland/scotch_stone_wall.JPG",
        "#{ s3_path }scotland/thumbs/scotch_stone_wall__thumb.JPG",
        "T-bone hamburger chuck, salami tongue short loin turkey biltong cow meatball tenderloin ball tip doner alcatra jowl."
      ],
      [
        "#{ s3_path }scotland/scotch_boats.JPG",
        "#{ s3_path }scotland/thumbs/scotch_boats__thumb.JPG",
        "T-bone hamburger chuck, salami tongue short loin turkey biltong cow meatball tenderloin ball tip doner alcatra jowl."
      ],
      [
        "#{ s3_path }scotland/scotch_skye.JPG",
        "#{ s3_path }scotland/thumbs/scotch_skye__thumb.JPG",
        "T-bone hamburger chuck, salami tongue short loin turkey biltong cow meatball tenderloin ball tip doner alcatra jowl."
      ],
      [
        "#{ s3_path }scotland/scotch_lone_boat.JPG",
        "#{ s3_path }scotland/thumbs/scotch_lone_boat__thumb.JPG",
        "Tri-tip pig meatball, alcatra cupim picanha jowl tenderloin tail rump turkey landjaeger pork belly pastrami."
      ],
      [
        "#{ s3_path }scotland/scotch_dolphins.JPG",
        "#{ s3_path }scotland/thumbs/scotch_dolphins__thumb.JPG",
        "Tri-tip pig meatball, alcatra cupim picanha jowl tenderloin tail rump turkey landjaeger pork belly pastrami."
      ],
      [
        "#{ s3_path }scotland/scotch_rainbow.JPG",
        "#{ s3_path }scotland/thumbs/scotch_rainbow__thumb.JPG",
        "Tri-tip pig meatball, alcatra cupim picanha jowl tenderloin tail rump turkey landjaeger pork belly pastrami."
      ],
      [
        "#{ s3_path }scotland/scotch_sheep.JPG",
        "#{ s3_path }scotland/thumbs/scotch_sheep__thumb.JPG",
        "T-bone hamburger chuck, salami tongue short loin turkey biltong cow meatball tenderloin ball tip doner alcatra jowl."
      ],
      [
        "#{ s3_path }scotland/scotch_stone_street.JPG",
        "#{ s3_path }scotland/thumbs/scotch_stone_street__thumb.JPG",
        "T-bone hamburger chuck, salami tongue short loin turkey biltong cow meatball tenderloin ball tip doner alcatra jowl."
      ],
      [
        "#{ s3_path }scotland/scotch_whisky.JPG",
        "#{ s3_path }scotland/thumbs/scotch_whisky__thumb.JPG",
        "Tri-tip pig meatball, alcatra cupim picanha jowl tenderloin tail rump turkey landjaeger pork belly pastrami."
      ],
      [
        "#{ s3_path }scotland/scotch_lomond_hills.JPG",
        "#{ s3_path }scotland/thumbs/scotch_lomond_hills__thumb.JPG",
        "Tri-tip pig meatball, alcatra cupim picanha jowl tenderloin tail rump turkey landjaeger pork belly pastrami."
      ]
    ]
  },
  spain: {
    src: "#{ s3_path }spain/spain__sheep.jpg",
    alt: "spain__sheep",
    title: "Spain",
    main_blurb: "",
    filter: "treks",
    article_type: "gallery",
    feature_article: "false",
    pics: [
      [
        "#{ s3_path }spain/spain__sheep.jpg",
        "#{ s3_path }spain/thumbs/spain__sheep__thumb.jpg",
        "This works!!"]
    ]
  },
  newport: {
    src: "#{ s3_path }newport/newport_light_house.JPG",
    alt: "Newport",
    title: "Newport, RI",
    main_blurb: "",
    filter: "getayways",
    article_type: "gallery",
    feature_article: "false",
    pics: [
      [
        "#{ s3_path }newport/newport_light_house.JPG",
        "#{ s3_path }newport/thumbs/newport_light_house__thumb.JPG",
        "This works!!"
      ]
    ]
  },
  saugerties: {
    src: "#{ s3_path }saugerties/saugerties_light_house.jpg",
    alt: "saugerties_light_house",
    title: "Saugerties, NY",
    main_blurb: "",
    filter: "getayways",
    article_type: "gallery",
    feature_article: "false",
    pics: [
      [
        "#{ s3_path }saugerties/saugerties_light_house.jpg",
        "#{ s3_path }saugerties/thumbs/saugerties_light_house__thumb.jpg",
        "This works!!"]
    ]
  },
  marthas_vineyard: {
    src: "#{ s3_path }mv/marthas_vineyard_creek.JPG",
    alt: "marthas_vineyard_creek",
    title: "Martha's Vineyard, MA",
    main_blurb: "",
    filter: "getayways",
    article_type: "gallery",
    feature_article: "false",
    pics: [
      [
        "#{ s3_path }mv/marthas_vineyard_creek.JPG",
        "#{ s3_path }mv/thumbs/marthas_vineyard_creek__thumb.JPG",
        "This works!!"]
    ]
  }
}

info.each do |k,v|
  article = Article.new(title: k.to_s)
  article.assign_attributes(v)
  article.save!
end

homeImages = [
  ["#{ s3_path }livingston_manor/home_image/livingston_manor__home.jpeg", 'Livingston Manor', '#article/livingston_manor'],
  ["#{ s3_path }filson/home_image/filson_1.JPG", 'Filson', '#slide_show/filson'],
  ["#{ s3_path }spain/home_image/spain__home.jpg", 'Spain', '#article/spain'],
  ["#{ s3_path }newport/home_image/newport_light_house__home.JPG", 'Newport', '#article/newport'],
  ["#{ s3_path }finger_lakes/home_image/finger_lakes_upstate_bug_home.JPG", 'The Finger Lakes', '#article/finger_lakes'],
  ["#{ s3_path }mohonk/home_image/mountain_house_home.JPG", 'Mohonk Mountain House', '#article/mohonk'],
  ["#{ s3_path }new_haven/home_image/new_haven_grass__home.JPG", 'New Haven', '#article/new_haven'],
  ["#{ s3_path }hoot/home_image/hoot_home.JPG", 'Hoot', '#article/hoot'],
  ["#{ s3_path }bear_mountain/home_image/bear_mountain_lake__home.JPG", 'Bear Mountain', '#article/bear_mountain'],
  ["#{ s3_path }nyack/home_image/nyack_hook_mt_tree__home.JPG", 'Nyack', '#article/nyack'],
  ["#{ s3_path }storm_king/home_image/storm_king_tree__home.JPG", 'Storm King', '#slide_show/storm_king'],
  ["#{ s3_path }scotland/home_image/scotch_old_man_store__home.jpg", 'Scotland', '#article/scotland'],
  ["#{ s3_path }saugerties/home_image/saugerties_light_house.jpg", 'Saugerties', '#article/saugerties'],
  ["#{ s3_path }mv/home_image/marthas_vineyard_creek__home.JPG", 'Marthas Vineyard', '#article/marthas_vineyard']
]

kays = ["finger_lakes", "livingston_manor", "hard_cooked_eggs", "masala_crunch", "filson", "mohonk", "new_haven", "hoot", "shrub", "bear_mountain", "hudson_winter_walk", "nyack", "storm_king", "scotland", "spain", "newport", "saugerties", "marthas_vineyard"]

Article.asc(:created_at).each_with_index do |art, i|
  art.set(alt: kays[i])
end

homeImages.each do |hi|
  HomeImage.create(src: hi[0], title: hi[1], path: hi[2])
end