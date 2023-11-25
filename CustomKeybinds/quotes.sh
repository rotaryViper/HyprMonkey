#!/bin/bash

# Array with expressions
expressions=(
# My quotes
"Sharing is Caring!"
"There is no good or bad. Everything is relative. Some happen to be more impactful."
"Giving up is for those who believe the goal is not worth the effort. Sometimes it really isn't."
"Time is gold. Use it or lose it."
"I do not fear the hate of others. I fear the possibility of loneliness."
"No one should matter in life more than yourself."
"Anything is possible. It a question of whether you are willing to make the sacrifices."
"Common sense is not so common."
"Pain is only an indicator, not a determinant of giving up. You still make the decision."
"No product is objectively better or worse. Someone will always object."
"Freedom of speech is not freedom of accountability."
"Everyone may have their own opinion, but no one should force their opinions on others."
"Those who judge too harshly are those who fail first. Keep your ears open for change."
"When anyone says good or bad, they can only speak of their past experiences. Anything else can not be trusted."
"Drugs and alcohol are not the problem. Addiction is the problem."
"Never be mad you are not #1. Someone probably worked harder than you could ever imagine."
"Beating around the bush only wastes time and brews distrust. Be direct."
"The shopping cart is the ultimate test for whether one is self governing. Pushing the shopping cart is an easy task that takes 1 minute of your life. You gain nothing in return for returning the trolley, except knowing you are a good person."
"Our interests rise and flourish over time. That is normal. What is rare now is the ability to push past the hard times so that we still have interests when the hard times come."
"It is impossible to be a good person, as it is impossible to be a bad person in the eyes of everyone. What matters the most is yourself."
"Everything is acceptable in moderation. Life should be perfectly balanced, as all good things are."
"To learn, does not mean to take action. Sometimes you know what will happen but you will do again. Don't. Its not worth it."
"The past may hurt to remember, but if you hide it forever, it too will haunt you forever."
"Reflecting upon your past is a integral part of learning to never repeat what harmed you so much, but do not stay fixated on the past as it may cloud your thoughts on the present and hinder your future."
"If life ever gets overwhelming, take a moment for yourself to reflect. Where did you use to be? Where are you now?"
"Stop telling yourself everything will be ok. The worse danger is the one you do not know about. Even worse, the ones you neglect."
"Kpop <3"
"Mobile phones and the internet are the source of information age laziness. They overstimulate people to the point that nothing else will ever be as interesting. It siphons interest from life goals and funnels it into the addicting internet."
"Opportunities come by luck. It doesn't matter how unlucky you are, they will come. It takes skills and effort to capitalize on these opportunities to fulfill our potential."
"A grass kazoo can be made by playing a thick blade of grass between your upright thumbs and blowing as hard as you can."
"What does money, accolades and end praise matter for if you can't save those you hold dearest?"
"Some problems can never be solved. You aren't a good person for avoiding problems. You are good for how you deal with these problems."
"Sometimes the happiest people in the public are the saddest in private. Everyone has a secret. Some people are better at hiding it than others."
"The bad days are temporary, just as good days are too. The grind is the only thing that is forever."
"What is the point of living the most decorated life if you don't like it?"
"What is the point of apologising if it will never be accepted, or if it will not change any event in life?"
"Why do we fabricate the persona we try to be, when we will never reach that level on our own merit? Isn't that just lying? Is this a justification of lying?"
"Frosted window panes. Street lights glimmer in the rain. Like a painting I walk slowly down an empty alley way. Next to builds left to rot, flowers twisted in their posted. Faces melting, colours gone. What should I do so help me now..."
# Flying Spaghetti Monster
"May you be touched by his noodly appendage. R'amen."
"Praise be thy noodles. R'amen."
# Technoblade quote
"Rank #1 isn't an achievement, it's a prison which forces you to dedicate your life to defending a temporary title."
"Most opportunities are created by luck. It takes skill to grasp those opportunities and turn it into success."
# Jschlat
"Never meet your heros boy, because heros are people, and people are shit."
# Volitre quotes
"Every man is guilty of all the good he did not do."
"Judge a man by his questions rather than his answers."
# Algorithmics
"Hilbert's Program proposed that all theories can be proven by a COMPLETE finite set of axioms. The proofs for these axioms were CONSISTENT and consists only of decidable, variable-free formulas."
"The Chinese Room Test states that strong AI have an level of sentience and understanding, while weak AI exclusively follows rules."
"Support Vector Machines are a form of supervised learning model where the algorithm is fed classified data, and from this data is attempts to find a hyperplane that seperates a dataset into two classes."
"An axiom or postulate or assumption is a statement that is assumed to be true but can not be proven. An mathematica axiom is Euclid's postulate where 2 parallel lines are assumed to never intersect."
# Methods
"Random variable: A variable whose values occur according to some specific probability distribution."
"Probability distribution: A rule that gives the probability of a random variable raking on a value or set of values."
"Continous random variable: A random variable that can take on any value in an interval of the real number line."
"Probability density function (PDF): A function that is used to describe the probability distribution of a continous random function X where its area under the curve, the probability that the random variable lies within a particular interval."
"Remember the +C and dx in integration!"
# Physics
"Red car is always fastest."
"LASER - Light Amplified by Stimulation from Electromagnetic Radiation"
"Electron absorbtion emits photons: hf = (En - Em)		Lambda = hc/E		h = 4.14*10^-15 eVs | f = Hz | E = eV | Lambda = m | c = 3*10^8 ms^-1"
"Ex = (mv^2)/2 = p^2/2m = qV | X Rays | Diffration p = h/Lambda | h may only be 4.14*10^-15 eVs when no momentum otherwise must use 6.63*10^-34 Js | Electrons | Ee = hf = hc/Lambda = pc"
# Chemistry
"Chiral carbons are carbons with 4 different neighbouring atoms."
"Functional group priority is    carbonxyl -> hydroxyl -> amino -> alkene -> alkyne"
"In VCAA, spelling matters. Avoid complicated words. Pick ether bond over glycosidic linkage. Pick water absorbing instead of hygroscopic."
)

# Seed random generator
RANDOM=$$$(date +%s)

# If its between 11pm-4am, go to sleep
NOW=$(($(date +%H)))

if [ $NOW -lt 4 ] || [ $NOW -gt 21 ]
then
	# Go to sleep, in red
	echo "<span foreground='lightcoral'><sup>Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep!</sup></span>"
else
	# Write random expression
	echo ${expressions[ $RANDOM % ${#expressions[@]} ]}
fi
