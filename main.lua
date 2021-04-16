male = {P = "he", NP = "him", SNP = "his", PL = "", S = " is", compliments = {primary = " handsome", secondary = " attractive", third = " cute"}} -- Defines a gender, can be edited to your preference inside and outside of logic
female = {P = "she", NP = "her", SNP = "her", PL = "s", S = " is", compliments = {primary = " beautiful", secondary = " pretty", third = " cute"}}
nb = {P = "they", NP = "them", SNP = "their", PL = "s", S = " are", compliments = {primary = " good looking", secondary = " attractive", third = " cute"}}
genderless = {P = "it", NP = "it", SNP = "it's", PL = "", S = " is", compliments = {primary = " good looking", secondary = " attractive", third = " cute"}}
custom = {P = "xe", NP = "xem", SNP = "xeir", PL = "s", S = " are", compliments = {primary = " good looking", secondary = " attractive", third = " cute"}}

function love.load()
  gender = male -- Specifies the users gender, only one set of pronouns are supported within this version, multi-pronouns ARE easy to code however.
  print("Wow, "..gender.P..gender.S.." so cool!") -- gender.P refers to the Personal pronoun, i.e. HE/SHE/they. gender.S refers to the Singularity of that pronoun, as in, they are or they is, essentially changes the word is/are for grammatical correctness.
  print("Look at "..gender.NP..gender.S.."n't "..gender.P..gender.compliments.third.."?") -- gender.NP refers to the Non-Personal pronoun of the user, i.e. HIM/HER/THEM Compliments are something that is important to gender identities, gender.compliments supports compliments in a rather rudimentary way, however, this does the job and efficiently.
  print("That is "..gender.SNP.." house!") -- gender.SNP refers to the Secondary Non-Personal pronoun of the user, i.e. HIS/HER/THEIR. [Their house. Her house. His house.]
  print(gender.P.." made that. It is "..gender.SNP..gender.PL.."!") -- gender.PL refers to the PLurality of the pronoun, i.e. HE IS/SHE IS/THEY ARE.
  gender = female -- Repeated multiple times to preview all pronouns.
  print("Wow, "..gender.P..gender.S.." so cool!")
  print("Look at "..gender.NP..gender.S.."n't "..gender.P..gender.compliments.third.."?")
  print("That is "..gender.SNP.." house!")
  print(gender.P.." made that. It is "..gender.SNP..gender.PL.."!")
  gender = nb
  print("Wow, "..gender.P..gender.S.." so cool!")
  print("Look at "..gender.NP..gender.S.."n't "..gender.P..gender.compliments.third.."?")
  print("That is "..gender.SNP.." house!")
  print(gender.P.." made that. It is "..gender.SNP..gender.PL.."!")
  gender = genderless
  print("Wow, "..gender.P..gender.S.." so cool!")
  print("Look at "..gender.NP..gender.S.."n't "..gender.P..gender.compliments.third.."?")
  print("That is "..gender.SNP.." house!")
  print(gender.P.." made that. It is "..gender.SNP..gender.PL.."!")
  gender = custom
  print("Wow, "..gender.P..gender.S.." so cool!")
  print("Look at "..gender.NP..gender.S.."n't "..gender.P..gender.compliments.third.."?")
  print("That is "..gender.SNP.." house!")
  print(gender.P.." made that. It is "..gender.SNP..gender.PL.."!")
end

function love.draw()
  love.graphics.print("Read Console!", 16, 16)
end

--[[
Final Notes:
This code is able to be condensed into 3 lines if only one gender is included (Though, it defeats the purpose, usually will be 5 lines to include male, female and non-binary),
this file is merely an example of all genders, this is easily changed to your liking if needed.

Furthermore, this code does not support capitalisation of pronouns in any form, that is expected to be fufilled by an actually correctly set-up text system, but I know that will be too hard for some people,
so it is entirely possible to add capitalisation for your pronoun in the form of;
nb = {P = "they", CP = "They", NP = "them", CNP = "Them", SNP = "their", CSNP = "Their", PL = "s", S = " are", compliments = {primary = " good looking", secondary = " attractive", third = " cute"}}
as this allows a user to define gender.CP, gender.CNP or gender.CSNP and they will get the capitalised forms of the pronoun.
This system could also be achieved by defining the first letter of the pronoun, then it's capitalisation, like this, which is more efficient;

nb = {MAIN = "t", CMAIN = "T", P = "hey", NP = "hem", SNP = "heir", PL = "s", S = " are", compliments = {primary = " good looking", secondary = " attractive", third = " cute"}} -- gender.MAIN refers to the first letter of th
print(gender.CMAIN..gender.P.." like"..gender.PL" you!") -- Has an issue with pronouns with different letters (They/them support causes this, potential new var needed? i.e. SPL = "s" or SPL = ""), produces "like's" instead of "likes", which is grammatically correct.
print(gender.CMAIN..gender.P..gender.PL.." interested in your hobbies!")
print(gender.CMAIN..gender.P..gender.PL.." wants to know you more!")
print(gender.CMAIN..gender.P..gender.PL.." has fallen head over heels for you!")
print(gender.CMAIN..gender.P..gender.PL.." feels like you've been together forever!")
--]]
