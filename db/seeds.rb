# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    beets = [{ name: 'Baby Candy Cane Beet', color: 'Red and White', description: 'Baby beets are popular served sliced in a salad, or as a side dish. They are sweeter than all other beets, and take less time to prepare.'}, { name: 'Blankoma Beet', color: 'White', description: 'A white beet with an early maturity, the blankoma beet has a fine, tender bulb that is very tasty when cooked. It is best enjoyed roasted with olive or nut oil.'},{ name: "Bull's Blood Beet", color: 'Red', description: 'An heirloom beet with an earthy yet sweet flavor, that is richer than the usual beet. Like the beet itself, the leaves of the plant are a deep red and can be eaten as a salad leaf. The juice from the bull’s blood beet is used to make the only red food coloring allowed by Swedish law.'}]

    bears = [{ name: 'Baluchistan Bear', description: 'The Baluchistan Bear, also called the Pakistan Black Bear (Ursus
    thibetanus gedrosianus) is a subspecies of the Asian Black Bear found in the Baluchistan Mountains of southern
    Pakistan and Iran. It has an unusually thin coat for an Asian black bear, but this is because it is found in a
    warmer climate than most of the other subspecies, which are found in the much more colder Himalayan Mountains. It is
    also more frugivorous than the other subspecies, and it loves to eat figs and bananas.', color: 'Black', habitat:
    'Baluchistan Mountains of Pakistan and Iran'},{ name: "Bergman's Bear", description: "The Bergman's bear (Ursus
    arctos piscator) is an alleged and probably extinct subspecies of the brown bear that lived in the Kamchatka
    Peninsula. The bear was identified and named by Swedish zoologist Sten Bergman in 1920.[1] Bergman determined that
    the bear was a separate subspecies after examining a hide (which had fur very different from other local bears) and
    series of footprints, measuring 14.5 x 10 inches, which he judged to be much larger than other bears on Kamchatka.
    Some think that the Cold War may have helped the population to recover because the Soviet Military blocked access to
    the area in that time.[1]", color: 'Brown', habitat: 'Kamchacta Peninsula'},{ name: 'Qinling Panda', description:
    'The Qinling panda (Ailuropoda melanoleuca qinlingensis) is a subspecies of the giant panda, discovered in the 1960s
    but not recognized as a subspecies until 2005.[1] Disregarding the nominate subspecies, it is the first giant panda
    subspecies to be recognized. It differs from the more familiar nominate subspecies by its smaller skull and dark
    brown and light brown (rather than black and white) fur, and its smaller overall size.[2] There are an estimated
    200–300 Qinling pandas living in the wild.', color: 'Dark and Light Brown', habitat: 'Qinling Mountains'},{ name:
    'Sloth Bear', description: 'The sloth bear (Melursus ursinus), also known as the Stickney Bear or labiated bear,[3]
    is a nocturnal insectivorous species of bear found wild within the Indian subcontinent. The sloth bear evolved from
    ancestral brown bears during the Pleistocene and shares features found in insect-eating mammals through convergent
    evolution. The population isolated in Sri Lanka is considered as a subspecies. Unlike brown and black bears, sloth
    bears have lankier builds, long shaggy coats that form a mane around the face, long sickle-shaped claws, and a
    specially adapted lower lip and palate used for sucking insects. Sloth bears breed during spring and early summer
    and give birth near the beginning of winter. They feed on termites, honeybee colonies and fruits. Sloth bears
    sometimes attack humans that encroach on their territory. ', color: 'Brown and Black', habitat: 'Sri Lanka'}, {name:
    'Matt Buck', description: 'super awesome', habitat: 'MakerSquare Lab', color: 'plaid & pale'}]

    
    beets.each do |beet_attrs|
    b = Beet.create beet_attrs
    end

    bears.each do |bear_attrs|
    b2 = Bear.create bear_attrs
    end