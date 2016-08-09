# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Policy.destroy_all

policies = Policy.create([
	{
	id: 1,	
    name: "College Tuition" ,
    left: "Make college debt-free. Take on student debt.",
    right: "No federal college loans. Insure private loans.",
    trump_quote: "These student loans are probably one of the only things that the government shouldnt make money from and yet it does.",
    hillary_quote: "Let’s … make debt-free college available to everyone. ... And let’s liberate the millions of Americans who already have student debt."
    },

    {
    id: 2,		
    name: "Illegal Immigration",
    left: "We embrace immigrants, not denigrate them",
    right: "Secure our borders and deport undocumented workers.",
    trump_quote: "If we don’t have borders, we don’t have a country. We need to BUILD A WALL that will keep illegal immigrants out.",
    hillary_quote: "If we claim we are for family, then we have to pull together and resolve the outstanding issues around our broken immigration system. The American people support comprehensive immigration reform not just because it’s the right thing to do—and it is—but because they know it strengthens families, strengthens our economy, and strengthens our country."
    },

    {
    id: 3,		
    name: "Tax Policy",
    left: "Higher Tax rates for the wealthy,",
    right: "Eliminate Tax loop holes for the wealthy",
    trump_quote: "It will be simple, it will be easy, it will be fair, Trump said in a press conference, claiming that by cutting loopholes used by the wealthy, It’s going to cost me a fortune.",
    hillary_quote: "It’s outrageous that multi-millionaires and billionaires are allowed to play by a different set of rules than hardworking families, especially when it comes to paying their fair share of taxes."
    },

    {
    id: 4,	
    name: "Free Trade",
    left: "Trading with the rest of the world is a necessity.",
    right: "Protect American ingenuity and Investment.",
    trump_quote: "Our goal is not protectionism but accountability. America fully opened its markets to China but China has not reciprocated. Its Great Wall of Protectionism uses unlawful tariff and non-tariff barriers to keep American companies out of China and to tilt the playing field in their favor.",
    hillary_quote: "I have a very clear view. We have to trade with the rest of the world. We are 5 percent of the world's population. We have to trade with the other 95 percent. And trade has to be reciprocal."
    },

    {
    id: 5,	
    name: "Military/Defense",
    left: "Invest in miltary.",
    right: "Rebuild miltary, pro-torture, war against ISIS.",
    trump_quote: "There's nobody bigger or better at the military than I am.....I would bring back waterboarding, and I’d bring back a hell of a lot worse than waterboarding.",
    hillary_quote: "I believe in strong alliances; clarity in dealing with our rivals; and a rock-solid commitment to the values that have always made America great."
	},

	{
	id: 6,
	name: "Gun Control",
	left: "Stricter Gun controls and background checks.",
	right: "The right to bear arms is a fundamental right.",
	trump_quote: "The Second Amendment guarantees a fundamental right that belongs to all law-abiding Americans. The Constitution doesn’t create that right – it ensures that the government can’t take it away. Our Founding Fathers knew, and our Supreme Court has upheld, that the Second Amendment’s purpose is to guarantee our right to defend ourselves and our families. This is about self-defense, plain and simple.",
	hillary_quote: "I believe weapons of war have no place on our streets. We may have our disagreements on gun safety regulations, but we should all be able to agree on a few things. If the FBI is watching you for suspected terrorist links, you shouldn’t be able to just go buy a gun with no questions asked."	
	},

	{
	id: 7,
	name: "Health Care",
	left: "Expand the Affordable Care Act",
	right: "Create ability to privitize Healthcare",
	trump_quote: "By following free market principles and working together to create sound public policy that will broaden healthcare access, make healthcare more affordable and improve the quality of the care available to all Americans.",
	hillary_quote: "The Affordable Care Act made preventive care available and affordable for an estimated 39 million people with Medicare and saved more than 9 million people with Medicare thousands of dollars in prescription drug expenses"
	},

	{
	id: 8,
	name: "Gay Marriage",
	left: "LGBTQ Americans deserve to marry who they love",
	right: "Constitutionally define marriage as one man & one woman",	
	trump_quote: "They have ruled on it. I wish that it was done by the state. I dont like the way they ruled. I disagree with the Supreme Court from the standpoint they should have given the state -- it should be a states rights issue. And thats the way it should have been ruled on",
	hillary_quote: "I'll fight to ensure lesbian, gay, bisexual, and transgender Americans have full equality under the law, and to end discrimination in employment, housing, schools, and other aspects of our society."
	},

	{
	id: 9,
	name: "Abortion",
	left: "Pro-choice",
	right: "Pro-life",
	trump_quote: "Planned Parenthood should absolutely be defunded. I am against abortion... and that is a tremendous amount of the work they do.",
	hillary_quote: "Politicians have no business interfering with women's personal health decisions. I will oppose efforts to roll back women's access to reproductive health care, including Republican efforts to defund Planned Parenthood. As president, I'll stand up for Planned Parenthood and women’s access to critical health services, including safe, legal abortion.",	
	},

	{
	id: 10,
	name: "LGBTQ Social Rights",	
	left: "Gender is what you decide you are.",
	right: "You are born a male or female.",
	trump_quote: "People go, they use the bathroom they feel is appropriate, there has been so little trouble. I believe it should be states' rights and the state should make the decision. They're more capable of making the decision.",
	hillary_quote: "Hillary will work with Congress to pass the Equality Act, continue President Obama’s LGBT equality executive actions, and support efforts underway in the courts to protect people from discrimination on the basis of gender identity and sexual orientation in every aspect of public life."
	},

	{
	id: 11,
	name: "Climate Change",
	left: "Renewable energy & Clean Power Plan",
	right: "Rejects climate change & greenhouse gas emissions.",
	trump_quote: "The concept of global warming was created by and for the Chinese in order to make US manufacturing non-competitive.",
	hillary_quote: "I won’t let anyone take us backward, deny our economy the benefits of harnessing a clean energy future, or force our children to endure the catastrophe that would result from unchecked climate change."	
	},

	{
	id: 12,
	name: "Animal/Environmental Protection",
	left: "End horse slaughter, end antibiotic use in animals",	
	right: "Cut EPA. Support eminent domain. ",
	trump_quote: "Cut the EPA; what they do is a disgrace.... We'll be fine with the environment. We can leave a little bit, but you can't destroy businesses.",
	hillary_quote: "The way our society treats animals is a reflection of our humanity."
	},
])
