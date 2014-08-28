# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([
	{
		name: 'Configuration',
		order: 1
	},
	{
		name: 'Offering',
		order: 2
	},
	{
		name: 'Experience',
		order: 3
	}
]);

config = categories[0];
offering = categories[1];
experience = categories[2];
Innovation.create([
	{
		name: 'Profit Model',
		caption: 'How you make money',
		order: 1,
		description: "Innovative profit models find a fresh way to convert a firm's offerings and other sources of value into cash. Great ones reflect a deep understanding of what customers and users actually cherish and where new revenue or pricing opportunities might lie. Innovative profit models often challenge an industry's tired old assumptions about what to offer, what to charge, or how to collect revenues. This is a big part of their power: in most industries the dominant profit model often goes unquestioned for decades.",
		category: config
	},
	{
		name: 'Structure',
		caption: 'How you organize and align your talent and assets',
		order: 3,
		description: "Structure innovations are focused on organizing company assets - hard, human, or intangible - in unique ways that create value. They can include everything from superior talent management systems to ingenious configurations of heavy capital equipment. An enterprise's fixed costs and corporate functions can also be improved through Structure innovations, including departments such as Human Resources, R&D, and IT. Ideally, such innovations also help attract talent to the organization by creating supremely productive working environments or fostering a level of performance that competitors can't match.",
		category: config
	},
	{
		name: 'Network',
		caption: 'How you connect with others to create value',
		order: 2,
		description: "In today's hyper-connected world, no company can or should do everything alone. Network innovations provide a way for firms to take advantage of other companies' processes, technologies, offerings, channels, and brands -pretty much any and every component of a business. These innovations mean a firm can capitalize on its own strengths while harnessing the capabilities and assets of others. Network innovations also help executives to share risk in developing new offers and ventures. These collaborations can be brief or enduring, and they can be formed between close allies or even staunch competitors.",
		category: config
	},
	{
		name: 'Process',
		caption: 'How you use signature or superior methods to do your work',
		order: 4,
		description: "Process innovations involve the activities and operations that produce an enterprise's primary offerings. Innovating here requires a dramatic change from \"business as usual\" that enables the company to use unique capabilities, function efficiently, adapt quickly, and build market-leading margins. Process innovations often form the core competency of an enterprise, and may include patented or proprietary approaches that yield advantage for years or even decades. Ideally, they are the \"special sauce\" you use that competitors simply can't replicate.",
		category: config
	},
	{
		name: 'Product Performance',
		caption: 'How you develop distinguishing features and functionality',
		order: 1,
		description: "Product Performance innovations address the value, features, and quality of a company's offering. This type of innovation involves both entirely new products as well as updates and line extensions that add substantial value. Too often, people mistake Product Performance for the sum of innovation. It's certainly important, but it's always worth remembering that it is only one of the Ten Types of Innovation, and it's often the easiest for competitors to copy. Think about any product or feature war you've witnessed-whether torque and toughness in trucks, toothbrushes that are easier to hold and use, even with baby strollers. Too quickly, it all devolves into an expensive mad dash to parity. Product Performance innovations that deliver long-term competitive advantage are the exception rather than the rule.",
		category: offering
	},
	{
		name: 'Product System',
		caption: 'How you create complementary products and services',
		order: 2,
		description: "Product System innovations are rooted in how individual products and services connect or bundle together to create a robust and scalable system. This is fostered through interoperability, modularity, integration, and other ways of creating valuable connections between otherwise distinct and disparate offerings. Product System innovations help you build ecosystems that captivate and delight customers and defend against competitors.",
		category: offering
	},
	{
		name: 'Service',
		caption: 'How you support and amplify the value of your offerings',
		order: 1,
		description: "Service innovations ensure and enhance the utility, performance, and apparent value of an offering. They make a product easier to try, use, and enjoy; they reveal features and functionality customers might otherwise overlook; and they fix problems and smooth rough patches in the customer journey. Done well, they elevate even bland and average products into compelling experiences that customers come back for again and again.",
		category: experience
	},
	{
		name: 'Channel',
		caption: 'How you deliver your offerings to customers and users',
		order: 2,
		description: "Channel innovations encompass all the ways that you connect your company's offerings with your customers and users. While e-commerce has emerged as a dominant force in recent years, traditional channels such as physical stores are still important - particularly when it comes to creating immersive experiences. Skilled innovators in this type often find multiple but complementary ways to bring their products and services to customers. Their goal is to ensure that users can buy what they want, when and how they want it, with minimal friction and cost and maximum delight.",
		category: experience
	},
	{
		name: 'Brand',
		caption: 'How you represent your offerings and business',
		order: 3,
		description: "Brand innovations help to ensure that customers and users recognize, remember, and prefer your offerings to those of competitors or substitutes. Great ones distill a \"promise\" that attracts buyers and conveys a distinct identity. They are typically the result of carefully crafted strategies that are implemented across many touchpoints between your company and your customers, including communications, advertising, service interactions, channel environments, and employee and business partner conduct. Brand innovations can transform commodities into prized products, and confer meaning, intent, and value to your offerings and your enterprise.",
		category: experience
	},
	{
		name: 'Customer Engagement',
		caption: 'How you foster compelling interactions',
		order: 4,
		description: "Customer Engagement innovations are all about understanding the deep-seated aspirations of customers and users, and using those insights to develop meaningful connections between them and your company. Great Customer Engagement innovations provide broad avenues for exploration, and help people find ways to make parts of their lives more memorable, fulfilling, delightful - even magical.",
		category: experience
	}
]);
