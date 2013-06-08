function pressenter()
   enter = io.read()
end
function pagebreak()
   print("----------------------------------------------")
end
print("Loading...")
print("Checking...")
print("Press enter to begin.")
pressenter()
print("Welcome to Revival Mobile Edition V1MR1B1. This is in very early")
print("development, so please take any")
print("bugs you see with a grain of salt.")
pressenter()
print("Starting game...")
print("Press enter.")
pressenter()
print("What is your name?")
user = io.read()
print("Okay, "..user..", nice to meet you!")
print("Name your companion.")
comp = io.read()
print(comp..": Do you know...?")
pressenter()
print(user..": No. Whats going on?")
pressenter()
print(comp..": Here. Listen to this.")
pressenter()
print(comp.." picks up the newspaper and reads it aloud.")
pressenter()
print(comp..": 'June 9th, 2013: Hi, my name is Jonas Lee. Yesterday, we experienced a tragedy in our town. Many people died. There were murders, bombings, even shootouts. The town was doormant for a few hours. The following night, the town became active again, except with one small problem: The dead had become undead. Zombies are now roaming the streets, and killing any live people they detect. I am currently in an underground bunker, but unfortanately I think it is only a matter of time before they fi'")
pressenter()
print(user..": Is that all?")
pressenter()
print(comp..": Yes. The zombies must have killed him before he could finish the article. They must have published it anyway, just to get the word out.")
pressenter()
print(user..": I can hear their growling outside. Should we hide?")
pressenter()
print(comp.." hesitates for a minute, then replies confidantly.")
pressenter()
print(comp..": No. We fight.")
pressenter()
pagebreak()
print("1 week later...")
pagebreak()
pressenter()
print(user..": Do you think we've trained enough?")
pressenter()
print(comp..": Nope, but we don't have much time. Lets do this.")
pressenter()
pagebreak()
supplies = 0
userHP = 20
function gamecode()
   print("What action?")
   print("Scavenge : Attack")
   begingame = io.read()
   if begingame=="scavenge" then
      print("You scavenge for the day.")
      supplies = supplies + 24
   end
   if begingame=="attack" then
      zombieHP = 20
      while zombieHP > 0 do
         print("You leave and hunt down a zombie.")
         zombieHP = 100
         enemy = "zombie"
         print("What action?")
         print("Fire : Shoot : Slice")
         fightaction =  io.read()
         if fightaction=="fire" then
            print("You draw back your arrow to fire at the zombie.")
            if math.random(100) < 25 then
               print("Critical hit!")
               print("-20 Health Points for the Zombie")
               zombieHP=zombieHP-20
            else
               print("Your shot wasn't as effective as planned...")
               print("-4 Health Points")
               zombieHP=zombieHP-4
            end
         elseif fightaction=="shoot" then
            print("You take your pistol out of your pocket and aim at the zombie.")
            if math.random(100) < 25 then
               print("Critical shot!")
               print("-30 Heath Points for the zombie")
               zombieHP=zombieHP-30
            else
               print("Your shot wasn't as effective as planned...")
               zombieHP=zombieHP-15
            end
         elseif fightaction=="slice" then
            print("You swing your sword out of your belt and aim at the zombie.")
            if math.random(100) < 25 then
               print("Critical slice!")
               print("-30 Health Points for the zombie")
               zombieHP=zombieHP-30
            else
               print("Your slice wasn't as effective as planned...")
               print("-10 Health Points for the zombie")
               zombieHP=zombieHP-10
            end
         else
            print("The zombie attacks in your hesitation!")
            print("(Spelling is very important!)")
         end
         userHP = userHP - 1
         if userHP < 0 then
            pagebreak()
            print("You died! Game over!")
            os.exit()
         end
         if zombieHP < 0 then
            pagebreak()
            print("The zombie falls to the floor")
         end
      end
   end
   gamecode()
end
gamecode()
