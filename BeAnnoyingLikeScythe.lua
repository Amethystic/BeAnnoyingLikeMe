﻿local best_killsay = ui.add_checkbox("Become Annoying")

function on_player_death(event)
    if not best_killsay:get() then
        return
    end

    local phrases = {
        "killed by a hack with a lua ong",
        "killsay",
        "get got lol",
        "balls",
        "1", 
        "oh my god vot eto one tap! :P",
        "Loaded Onezor.lua[Free]",
        "Overwatch 2 Mod pack Rar file download :arrow_double_down: in desc free tool :fire: Downlooad For Free password 1234 Rar archive :white_check_mark:",
        "i'm am working on the cheat god hack over watch ~2~ mod pack for over watch ~2~ it will be excellent   . feature",
        "(◣_◢) dont ping while i fap (◣_◢)",
        "Do not.......................",
        "VAAAAAAAC !!! (づ ◕‿◕ )づ",
        "why would i kill myself when my thighs are so cute",
        "there is nothing wrong with wearing skirt, pantsu, thigh highs",
        "medusa wont wokr for me",
        "prediction.lua :(",
        "What the fuck is a Erp?",
        "Awwe, you're so cute when you're in pleasure~",
        "im sitting here thinking prims is that shit or i jus fell off lmfao my god",
        "im on prim... yea im dump",
        "get off ur colors[ImGuiCol_Button] ass hax! (◣_◢)",
        "alt f4 rn",
        "wheres gs.dog users?",
        "killsay generated by ChatGPT",
        ":3 Industries",
        "Can I have 100$ for my drug addiction please",
        "(◣_◢) give me ur skin",
        "(◣_◢)",
        "(◣_◢) EXTENDED BACKTRACKING IS FUCKING USELESS",
        "(◣_◢) put a hex on a nigga n he wake up hella bruised (◣_◢)",
        "me when the BeAnnoyingLikeScythe.lua says something when u die: :skull:",
        "This pandora lua ANNOYING AS FUCK!",
        "sleeping gato",
        "gimme pandora inv cracks ass",
        "gg",
        "I'm sure your bodypillow is very proud of you.",
        "LIFEEEEHAAAACK BITCH!!! (◣_◢)",
        "its ok that u died give me a hug, all our cheats ass anywayz (づ ◕‿◕ )づ"
    }
    local userid = event:get_int("userid")
    local attacker = event:get_int("attacker")
    local local_player = engine.get_local_player()
    local attacker_entindex = engine.get_player_for_user_id(attacker)
    local victim_entindex = engine.get_player_for_user_id(userid)

    if attacker_entindex ~= local_player or victim_entindex == local_player then
        return
    end

    engine.execute_client_cmd("say " .. phrases[math.random(1, #phrases)])
end
callbacks.register("player_death", on_player_death)
