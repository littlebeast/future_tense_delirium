"Future-Tense Delirium" by Steven Hack and Rhys Larkins

Use no scoring.

Part 1 - Home Life

When play begins: say "Beep! Beep! Beep! Beep!

You wake up in a jolt! It's morning, you think... As you think this, your head is suddenly overcome by a wave of horrible pain. A fever, now of all times?

You were given so much time to prepare to leave home, but you put it off. You procrastinated and wasted time. Then, when you knew it could wait no longer, THEN you decided to start researching, and look where it's left you? You've been trudging through all this research for so long that you've gone and overworked yourself, and earned a fever for it.

You try to light a cigarette, but a wave of nausea overcomes you, and you think better of it.

...Anyway, you have to make a decision soon. There are many paths ahead of you, and only one of them is going to be the one that makes you truly happy. You only have so long til your parents just up and kick you out, so it'd be best to make your decision soon.".

Your bedroom is a room. The description of your bedroom is "The same old room you've always been in since who knows when. Sigh... you're gonna miss this old place..."
The lighter is a thing.  The player carries the lighter.
[this is needed for the gun section - otherwise the player has no means to ignite the gunpowder.  it's a little out of place, but oh well.]

Report requesting the score:
	say "Military: [Military Affinity][line break]College: [College Affinity][line break]Moving: [Moving Affinity]".

Instead of doing something other than examining, looking, or taking inventory in your bedroom, say "You try [the current action], but as you move to do so, you are overcome by a horrible headache."

A Decision is a scene.  A Decision begins when the player is in the bedroom for the fourth time.

When A Decision begins:
	say "Suddenly, your fever goes away. You feel very lucid now. You've seen a lot of things over this short amount of time. Had many thoughts about the future.";
	if Military Affinity > College Affinity and Military Affinity > Moving Affinity and Military Affinity >= 0:
		follow the military ending rule;
		rule succeeds;
	if College Affinity > Military Affinity and College Affinity > Moving Affinity and College Affinity >= 0:
		follow the college ending rule;
		rule succeeds;
	if Moving Affinity > Military Affinity and Moving Affinity > College Affinity and Moving Affinity >= 0:
		follow the moving ending rule;
		rule succeeds;
	if Moving Affinity < 0 and College Affinity < 0 and Military Affinity < 0:
		follow the hobo ending rule;
		rule succeeds;
	otherwise:
		follow the indecision ending rule;
		rule succeeds.

This is the military ending rule:
	say "You take a good look at the rifle...[line break][line break]The military can be a very unfair place. You will have no place to truly call your own, and you will sometimes even have to go so far as to take the lives of people that you have no reason to want to. However, at the same time, you will be giving your all to protect the land and people you care for. You will be risking it all to make sure that those who you love won't have to later.[line break][line break]With a hup!, you head out for the recruiting station. Soon, you will start your new life in service of your country.";
	end the story finally.
This is the college ending rule:
	say "You look at the textbook again...[line break][line break]Yeah, college can be rough, and sometimes you don't have the time to do whatever you want, but it's not like you're giving everything away for nothing. You're investing in something more: the ability to do what you want to later, to be able to do it well, and hey, you might even be able to make a good career out of it. And just because you can't ALWAYS relax and do fun things, doesn't mean you NEVER can. [line break][line break]I mean, you're gonna be surrounded by others who are in the exact same situation as you. You'll get to know more people who understand the junk you sometimes have to go through to get ahead. For all the time you lose, you also gain knowledge, and friends.[line break][line break]Wellp, might as well get a start on all the paperwork; Getting into college can be just as hectic as staying in college.";
	end the story finally.
This is the moving ending rule:
	say "You take one more look at the rent contract.[line break][line break]Even if it's gonna be rough, and there's no guarantee that things will always be good, if you are on your own, at least wherever you live is yours. You won't be tied down forever by somebody just for trying to better yourself. If you want to learn and do things for your loved ones, you can do it yourself. On your own, you're free to do whatever you think is best.[line break][line break]You start to pack all the things you have; You don't have too long to move out and get settled in.";
	end the story finally.
This is the hobo ending rule:
	say "College? The Military? Some dead-end job? None of this looks good at all![line break][line break]You've been wasting all this time researching and wracking your brain, and it all came to nothing! Suddenly, it feels as if the room is closing in around you. You close your eyes, bracing for the worst...[line break][line break]You open your eyes. You realize that that whole ordeal was a dream, a sad revisiting of the life you once had. Now, you're nothing more than a homeless man, a beggar on the streets, wearing tattered clothes and living in a box.[line break][line break]Stupid friggin' horrible blinding motherflubbing skull-smashing fever!!!";
	end the story finally.
This is the indecision ending rule:
	say "You look at the rent contract... then the rifle... then the textbook...[line break][line break]Even though you have to make a decision at some point, none of these seem too much better than the others.[line break][line break]Whatever. You'll just let things happen as they come. You've got plenty of places to go, and it's not like you HAVE to stay with any of these forever. It's your life, and the future is only going to get better.";
	end the story finally.

Part 2 - The Military

Military Affinity is a number that varies.  Military Affinity is 0.

Chapter 1 - Gun 

[it's weird, for all the text in here, this chapter is actually really short.]
Shooting is an action applying to one visible thing.
Understand "shoot [something]" as shooting.

Instead of shooting when the player holds a gun:
	try attacking the noun.
Instead of shooting when the player does not hold a gun:
	say "Shoot [the noun] with what?"

Understand "shoot [gun]" as a mistake("You might try shooting someone with the gun, instead.")

Section 1 - Falling in

The rifle is in the bedroom.
A gun is a kind of thing.  The rifle is a gun.  Understand "gun" as a gun.

Instead of doing anything with the rifle when Both Sides of the Gun has not happened:
	say "You try [the current action], but as you approach it you instead find yourself falling...";
	move the player to the gun barrel, without printing a room description.

Both Sides of the Gun is a scene.  "[bold type]Darkness.[line break][roman type]You are cramped into a tight, dark space with metal surrounding you in all directions.

Suddenly you hear a deafening bang.

As your ears clear up you hear a cacophany of other noises: thunderous rat-a-tat-a-tats, stamping feet, the occasional yell.  The sounds of a battlefield.

Another gunshot sounds from incredibly nearby.  Moments later, you finally see light."

Both Sides of the Gun begins when the player is in the gun barrel.

When Both Sides of the Gun begins:
	try looking;
	the rifle cocks in two turns from now;
	the rifle fires in three turns from now;
	the girl shoots in four turns from now.

[I don't like this but it does make it so we don't have to make as many descriptions >.> ]
Instead of examining when Both Sides of the Gun is happening:
	say "Now is a time for action, not careful examination!".

Section 2 - Inside the Gun

The gun barrel is a room.  "You are in one end of a rifle barrel.  Nearby, the [hammer] lies still, blocking one end of the barrel.  Out the opening at the other end you can see a twenty-three year old [girl] wearing camouflage and wielding a submachine gun."

The barrel opening is an open door.  It is not openable.  It is outside of the gun barrel.  Through it is the battlefield.

After deciding the scope of the player:
	if the location is the gun barrel, place the Japanese girl in scope.

Instead of examining outside in the gun barrel:
	say "Outside the barrel, you can see only the Japanese girl.".

Instead of going when the room gone from is the gun barrel:
	say "You can't seem to move very far.  Almost like you don't have legs."

The mass of gunpowder is a thing in the gun barrel.  It has the initial appearance "Next to you is a packed mass of gunpowder."
Understand "powder" as the gunpowder.

The hammer is scenery in the gun barrel.

After taking the gunpowder:
	say "You take the gunpowder, removing it from its place at the hammer's base.".
Understand "remove [gunpowder]" as taking.

Understand "ignite [something]" as burning.

Instead of burning the gunpowder:
	follow the rifle firing rule;
	increase Military Affinity by one.

At the time when the rifle cocks:
	if the player is in the gun barrel, say "You hear a click, and the hammer begins to pull away from you.[line break][line break]At the same time, the Japanese girl raises her gun, pointing it at whoever's holding the gun you're in.".

At the time when the rifle fires:
	if the player is in the gun barrel:
		say "The hammer springs forward and sparks.";
		if the gunpowder is in the gun barrel:
			follow the rifle firing rule;
		otherwise:
			say "However, there is nothing for the spark to ignite.";
			decrease Military Affinity by one.

At the time when the girl shoots:
	if the player is in the gun barrel:
		say "The girl begins firing, and you feel a sense of vertigo as the rifle tilts upwards...[line break]";
		move Jenkins to the battlefield;
		now the enemy is the Japanese girl;
		follow the enter the battlefield rule.

This is the rifle firing rule:
	say "The mass of gunpowder explodes, and you are sent flying out of the rifle.";
	now the Japanese girl is dead;
	now the initial appearance of the Japanese girl is "The Japanese girl lies here, a bullet from your rifle through her heart.";
	move the Japanese man to the battlefield;
	now the enemy is the Japanese man;
	follow the enter the battlefield rule.

This is the enter the battlefield rule:
	now the player carries the rifle;
	now the gunpowder is off-stage;
	move the player to the battlefield;
	say "You ready your rifle and prepare for the fray.";
	the enemy shoots in two turns from now.

Section 3 - Battle

The battlefield is a room. The description is "For what little time you have to look around, all you see is a large, treeless wasteland. You can hear gunshots coming from seemingly every direction.".

[using an adaptation of part of the code from the example "puff of orange smoke"]
A person can be alive or dead.  A person is usually alive.
A body is a kind of thing.  A body is a part of every person.
Setting action variables when the noun is a body which is part of a person (called owner): 
	now the noun is the owner. 
Setting action variables when the second noun is a body which is part of a person (called owner): 
	now the second noun is the owner. 
Understand "corpse" as a body when the item described is part of a dead person.

Jenkins is a person.  Jenkins is dead.  The initial appearance is "Your comrade Jenkins lies fallen here, riddled with bullets."

Before printing the name of an improper-named dead person, say "corpse of a ".
Before printing the name of a proper-named dead person, say "the corpse of ".

[Apparently if you define something as a kind you can make multiple things named the same as the kind.  Good to know.]
camouflage is a kind of thing.  Camouflage is always wearable.  Understand "camo" as camouflage.  It is plural-named.
A submachine gun is a kind of gun.

The enemy is a person that varies.

The Japanese girl is a person. She is female.  She is in the battlefield.  She is wearing camouflage.  She is holding a submachine gun.  The initial appearance is "A Japanese girl stands here with a submachine gun, not having noticed you yet.".

The Japanese man is a person.  He is wearing camouflage.  He is holding a submachine gun.  The initial appearance is "A Japanese man stands here with a submachine gun, not having noticed you yet.".

Both Sides of the Gun ends in victory when the enemy is dead.
Both Sides of the Gun ends in defeat when the player is dead.

When Both Sides of the Gun ends in victory: say "The moment [the enemy] falls to the ground, you suddenly start to feel faint, and fall to the ground. 

As your consciousness fades, you only feel relief that you've brought this whole conflict one step closer to victory, that you've done one more thing to keep your friends and family safe, and one more thing in service to your country. 

Suddenly, you open your eyes again. It was all just a dream; A product of your high fever. You are back in";
move the player to your bedroom.

When Both Sides of the Gun ends in defeat: say "You stumble forward, the feeling of the bullet wounds rushing at you suddenly. You lose all strength in your arms and legs, and fall to the ground.

In your last moments of consciousness, you can only feel regret. Why did you do this? Why did you come here? You never wanted to fight, to kill others who you don't even know, for reasons you barely even understand. For all you know, these people might not have even wanted to fight, only doing so to protect themselves and their loved ones.

Everything fades to black. You then open your eyes, only to realize that this was all a dream. Cursed fever! 

Anyways, you are still in";
now the player is alive;
move the player to your bedroom.

Instead of attacking the enemy when the player holds a gun:
	say "Like a good soldier, you shoot [the enemy].";
	now the enemy is dead;
	increase Military Affinity by 4.
Instead of attacking the enemy when the player does not hold a gun:
	say "You'll have to pick up your weapon first."

After dropping the gun when Both Sides of the Gun is happening for the first time:
	decrease Military Affinity by 2;
	say "Sick of conflict, you throw your gun to the ground."

At the time when the enemy shoots:
	if the enemy is alive:
		decrease Military Affinity by 2;
		say "[The enemy] notices you and mercilessly fills you with bullets.";
		now the player is dead.

Part 3 - College

College Affinity is a number that varies.  College Affinity is 0.

[TODO: most of this part]

Chapter 1 - Textbook

The textbook is a thing in the bedroom.  Understand "book" as the textbook.

Understand "read [textbook]" as examining.
Understand "consult [textbook]" as examining.

Typing is an action applying to one topic.
Understand "type [text]" as typing.
Instead of typing:
	try answering the computer that.

Instead of examining the textbook in the bedroom when The More You Know has not happened:
	say "You start reading the textbook, but it makes absolutely no sense.  Somewhere around the part where Martians helped the South win the Civil War, you throw the book against the wall, only to find you are not where you were when you started reading.";
	move the player to the library.

The More You Know is a scene.
The More You Know begins when the player is in the library.
When The More You Know begins:
	move the textbook to the library.
The More You Know ends when Table 3.1.1 is empty.
When The More You Know ends:
	say "[bold type]Quiz over.  Your score: [Test Score]/[the number of rows in Table 3.1.1].";
	let Modified Score be (Test Score  * 2) - 5;
	if Modified Score > 0:
		say "You pass.[roman type][line break][line break]You feel a great satisfaction in all of this. Even though the questions made less and less sense, you were still able to figure them out on your own. If you can do this, is there any difficulty you can't overcome with thought and a little elbow grease?[line break][line break]Suddenly, the monitors turn white, getting brighter with each moment. Soon, you are consumed in a bright light![line break][line break]You open your eyes, finding yourself back in your room. That whole ordeal was only a dream? This fever must be bad if it's doing this to you...";
	otherwise:
		say "You fail.[roman type][line break][line break]A great sense of disappointment falls upon you. You thought you had what it took to do this. If something like this is going to hold you back, who knows what other, more esoteric topics might appear and stop you in your future?[line break][line break]In utter disappointment and frustration, you fall onto your knees and let out a loud yell. As you open your eyes again, you realize that you are now in your room. That whole crucible was only a dream. Blasted fever!";
	move the player to the bedroom;
	now the player carries the textbook;
	now College Affinity is (College Affinity + Modified Score).
Test Score is a number that varies.  Test Score is 0.

The library is a room.  "The walls are lined with bookshelves all the way up to the ceiling, all the way around.  However, your attention is more occupied by the giant computer taking up the center of the room."
The testing computer is a person in the library.  It is scenery.  The description is "The computer is quite an impressive installation.  It makes up a large pillar in the center of the library.  From the pillar hang three monitors, each facing a different direction so the screen is visible from every possible location.  Below the screens are giant control panels, each containing a keyboard that has not only the English alphabet, but also accented characters, the Arabic alphabet, Japanese katakana, and some more character sets you don't recognize.

And yet, for all that, there's neither a mouse nor a GUI.  Go figure."
A monitor is a kind of thing.  Understand "screen" as a monitor.  Understand "screens" as monitors.  Three monitors are part of the testing computer.
A keyboard is a kind of thing.  Three keyboards are part of the testing computer.
A pillar is part of the testing computer.
The bookshelves are scenery in the library.  The description is "On further examination, it seems that all the books on the shelves are fake.  Maybe one of them would open a secret passage, but you haven't got the time to pull on each one."  Understand "shelves" as the bookshelves.
Books are part of the bookshelves.  The description is "Fake books.  They don't even have titles on them."
[it's a person so Inform directs answers to it.]

Every turn when The More You Know is happening:
	repeat through Table 3.1.1:
		say "The testing computer prints: [bold type][Quiz Question entry][roman type]";
		make no decision.
[this is a little unintuitive; "make no decision" acts as a return statement, so what this does is just prints the first non-blank line.]

Instead of examining the textbook while The More You Know is happening:
	repeat through Table 3.1.1:
		if there is a Chapter entry:
			let Chapter Number be the Chapter entry;
			choose the row with Chapter of Chapter Number from Table 3.1.2;
			say "You find something that looks relevant:[line break][line break][bold type]Chapter [Chapter entry][line break][roman type][Text entry][line break]";
		otherwise:
			say "You cannot find anything relevant in the textbook.";
		stop the action.
[Similarly, this prints the entry in Table 3.1.2 that corresponds to the current row in Table 3.1.1]

Instead of answering the computer that a topic listed in the Table of Quiz Questions when The More You Know is happening:
	let Temp be the Quiz Question entry;
	repeat through Table 3.1.1:
		if Temp is the Quiz Question entry:
			increase Test Score by 1;
			say "The computer responds: [bold type]Correct.[roman type]";
		otherwise:
			say "The computer responds: [bold type]Incorrect.[roman type]";
		blank out the whole row;
		stop the action.
[and this checks if the answer matches the "correct" answer for the current row.]

Instead of answering the computer that when The More You Know is happening:
	say "The computer responds: [bold type]Incorrect.[roman type]";
	repeat through Table 3.1.1:
		blank out the whole row;
		stop the action.
[meanwhile, this block moves to the next row if (as is likely) the player answers with a phrase that is not the answer to any question.]

[would love to allow "Hell, Michigan" but Inform's understand stuff doesn't like commas.  Probably should make a different question then.]
Table 3.1.1 - Quiz Questions
Topic	Quiz Question	Chapter
"Two/2"	"How many Great Exodi have happened?"	1
"Hermann Rorschach" or "Rorschach"	"Who was M.C.Escher's greatest enemy?"	4
"Forty-two" or "42"	"What do you get when you multiply 6 by 9?"	1
"Dir Civil War" or "Civil War"	"Äst primer en zir globinsphere dir Martians sne ilgenmast?"	7
"I feel fine" or "Fine"	"How do you feel?"	--

Table 3.1.2 - Book entry
Chapter	Text
1	"As everyone knows, the universe runs in base 13.  Using this knowledge, and the recently-discovered edge of the universe behind Gallifrey 412, scientists have calculated the location of the center of the universe.  They were quite surprised to find it to in Hell, Michigan.  The obvious conclusion - that the edges of the universe were Heaven - prompted the Third Great Exodus in 2034, twenty years from now."
4	"Under the guise of making amends, Rorschach made his way into the center of the complex.  At the point where all stairs meet, he made his move, using a ink-stained kerchief to plunge the area into darkness.  From there, he stole away into the bottom-most depths of the dungeon, where he found his prize: the fabled Bending Triangle of Escher."
7	"De flergunsterg sne horgenmätz dir heggenütz.  Smebog sne jebudé åst morgen.  Ay mongentenks ïr walgenmatzit.  Ze Floggenue an gerené börk börk börk.  En dir Civil War ur mastingetsit fûr orgentansin.  Mer forgentats in dêr eigenwhatsits.  Orp Martians le gorchen en marewîl lopsis.  Mure cidowas en florgenshäks efermos."
[TODO: add more Q/As]

Part 4 - Living on Your Own

Moving Affinity is a number that varies.  Moving Affinity is 0.

Chapter 1 - Rent Contract

Section 1 - Going to the Office

The rent contract is a thing in the bedroom.

Understand "read [contract]" as examining.

Instead of examining the rent contract in the bedroom when Making a Commitment has not happened:
	say "You try to understand the legal-ese that the contract was written in, becoming absorbed in trying to understand it all. Soon, you lose all track of time and place trying to understand the ridiculous wording...";
	now the rent contract is on the desk;
	now the rent contract is undescribed;
	change the description of the rent contract to "The contract for the property you're looking to rent.";
	move the player to the real estate office.

Making a Commitment is a scene.

Making a Commitment begins when the player is in the real estate office.
Making a Commitment ends when the player is in your bedroom.

Section 2 - The Real Estate Office

The real estate office is a room."You find yourself in an office of a real estate agent.

After having spent considerable time looking through properties, you think you've found the right one. Comfortably near all the major businesses; decently priced; has all the amenities you'll need...  It almost feels too good to be true."

The desk is a thing in the real estate office.  "On the desk in front of you lies the rent contract and a pen with which to sign it."  The pen is on the desk. 

The pen is an undescribed thing. The description of the pen is "A normal ink pen. One of the ones you get in a huge package of, like, fifty of them..."

Instead of taking the rent contract in the real estate office:
	say "There's no reason to take the contract now. You haven't even signed it yet."

The real estate agent is a person in the real estate office.  "The real estate agent scrutinizes you from across the desk." The description is "An old man, who has probably had years of experience selling homes and renting properties behind him. He's staring at you intently, seemingly analyzing your every action."

Instead of asking the real estate agent about "a pen", say "The real estate agent's expression becomes slightly annoyed. [quotation mark]There is a pen right here on the desk. Please use it to sign this contract, if you please.[quotation mark]".

Instead of asking the real estate agent about "the rent contract", say "The agent leans in closer. [quotation mark]Yes, the contract. Please sign it, and then the place will be yours... Well, you'll be renting it, but still...[quotation mark]".

Instead of telling the real estate agent about something, try asking the real estate agent about it.

Instead of asking the real estate agent about something, say "The real estate agent dismisses your query. [quotation mark]Yes, yes, we can discuss other things later, but now, I just need you to sign this contract.[quotation mark]".

The Office Door is a door. It is outside of the real estate office. Through it is your bedroom.

Signing is an action applying to two things.
Understand "Sign [something] with [something]" as signing.
Check signing when the second noun is not the pen:
	say "You can't write with [the second noun]!";
	stop the action.
Check signing when the second noun is the noun:
	say "You can't seem to bend [the noun] in that way.";
	stop the action.
Report signing: 
	say "You vandalize [the noun].".

Instead of opening the Office Door for the first time: say "As you go towards the door, a wave of regret washes over you. You spent so long researching homes and properties, and you found an absolutely perfect match for yourself. You should at least take a moment to reconsider...";
Decrease Moving Affinity by 1.

Instead of opening the Office Door for the second time: say "You continue to go toward the door out, but as you do, a feeling of guilt settles in your mind. You have to move out of your parents' house soon, and you've already spent so much time on this undertaking. You're leaving a potentially once-in-a-lifetime opportunity here...";
Decrease Moving Affinity by 1.

Instead of opening the Office Door for the third time: say "You know what, it doesn't matter in the end! As long as you can find your way, you don't HAVE to settle for less, or for something you may regret later. There are many other paths through life, and this just isn't your style.

As you open the door, a bright light washes over you, and you feel as if you're floating, if only for a second.";
Decrease Moving Affinity by 3;
Move the player to your bedroom, without printing a room description;
say "Suddenly, you shake yourself awake! You're still in your room. It was all just a dream. Stupid fever...";
now the player carries the rent contract;
Change the description of the rent contract to "A contract to rent a home. Left unsigned".

After signing the rent contract in the real estate office when the second noun is the pen for the first time: say "As you go to sign the contract, you decide to look at some of the fine print that you mostly skimmed over previously.

As you read, you find yourself quite concerned. So many potential fees and charges, not even considering deposits and the such...";
Increase Moving Affinity by 1;
Stop the action.

After signing the rent contract in the real estate office when the second noun is the pen for the second time: say "You valiantly continue to try to sign the document.

So what if there are fees and charges? That's a part of being an adult! You get a job, you pay the bills, and you live happily, free from the arbitrary constraints placed on you by so many!

However, as you try to sign again, some more of that dratted fine print catches your eye.

You feel even more concern over this whole deal. Seriously, you're moving out of the reasonably secure home you are in now, throwing yourself into the often crushing world of working and living with little to no safety net. So many things can go wrong!";
Increase Moving Affinity by one;
Stop the action.

After signing the rent contract in the real estate office when the second noun is the pen for the third time: say "Screw this! You made up your mind long ago!

Even if it's only rented, even if you have to work hard hours to pay for this place, it's still yours! A place you can call your own! That's the point of all this. Ignoring all this, you have to leave the home you're in now anyways, so may as well go somewhere that you can be king of.

You sign the document confidently, but as you go to sign, something strange happens. The pen begins to rumble, and suddenly, rather than a smooth line of ink running out as you write, the ink suddenly starts spraying out of the pen, and floods the room...";
Increase Moving Affinity by three;
change the description of the rent contract to "The contract to rent a home, proudly signed.";
now the player carries the rent contract;
Move the player to your bedroom, without printing a room description;
say "Suddenly, you wake up in your bedroom. It was only a dream. It must have been the fever's doing...";
Stop the action.