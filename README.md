# Midnight Prowl

## Overview
Midnight Prowl is a single-player roguelike puzzle platformer set in a haunted house. Players control a brave cat navigating dangerous environments to rescue its owner while surviving enemies, traps, and increasingly complex challenges.

The game combines puzzle-solving, platforming, and light combat with an emotional narrative centered on loyalty and survival.

---

## Team
- Abby Graber — Programmer, Artist  
- Sneaha Santra — Artist  
- Siya Desale — Designer  
- Ananya Patchigolla — Producer  

---

## Game Details
- **Genre:** Roguelike Puzzle Platformer  
- **Theme:** Spooky / Haunted  
- **Platform:** PC (GameMaker)  
- **Mode:** Single Player  

---

## Gameplay
Core gameplay loop:
- Explore the environment  
- Avoid or fight ghosts  
- Collect fish to restore health  
- Solve puzzles and obstacles  
- Progress to the next level  

Players must rely on timing, strategy, and decision-making to survive and advance.

---

## Story
You play as a fearless cat trapped inside a haunted house. Your goal is to find and rescue your owner while navigating eerie rooms filled with ghosts, traps, and illusions.

As the game progresses:
- You begin alone and must survive using instinct and timing  
- You encounter deceptive puzzles that require critical thinking  
- You identify your real owner among impostors  
- You reunite and work together to escape through cooperative puzzles  

The story emphasizes trust, problem-solving, and the bond between the cat and its owner.

---

## Levels
### Turtorial
- Player is given an introduction to the game mechanics

### Level 1: Locked Room Escape
- Focus on movement and basic mechanics  
- Introduces ghosts and environmental interaction  
- Trial-and-error gameplay  

### Level 2: Identify the Owner
- Puzzle-focused level  
- Requires observation and analysis  
- Player must distinguish the real owner from impostors  

### Level 3: Cooperative Escape
- Dual-character gameplay (cat + owner)  
- Requires coordination and puzzle-solving  

---

## Controls

### General
- **Arrow Keys** — Move cat  
- **Mouse Click** — Attack (Level 1)  

### Level-Specific
- **Level 2:** Mouse interactions (clicking, dragging, analyzing clues)  
- **Level 3:**  
  - Arrow Keys — Control cat  
  - WASD — Control owner  

---

## Cheat Codes
- **Alt + N** — Next room (disabled during story sequences)  
- **Alt + B** — Previous room  
- **Alt + S** — Reset room 
- **Alt + F** — Toggle fullscreen 
- **Alt + G** — Restart game
- **Alt + C** — Toggle camera size

---

## Installation

### Run via ZIP
1. Download and extract the project ZIP  
2. Open the `Midnight-Prowl` directory  
3. Open the GameMaker project file  
4. Run the game in GameMaker  

---

## Features
- Puzzle + platformer hybrid gameplay  
- Increasing difficulty across levels  
- Enemy AI with unique movement patterns  
- Health system using collectible fish  
- Environmental storytelling  
- Transition to cooperative-style gameplay  

---

## Educational Value
- Encourages critical thinking and analysis  
- Builds problem-solving skills  
- Reinforces learning through trial and error  

---

## Grad Implemenation

Shaders:
- sh_enemy_damage
- sh_player_damage
- sh_green_flash

Paths: Level 1,2, & 3

Particles: 
- Floor particles when walking in the platforming levels
- Smoke particles when ghosts die

Viewports: Level Tutorial, 1, & 2

Smart Opponents: obj_mouse & obj_ghost_1

---

## Assets & Licensing
- Artwork & Animations by Abby Graber (2026)  
- Some assets generated using AI tools
- Sound licensing: Levels 1-3: https://e-balbuena-music.itch.io/spooky-tune-jam-2025
- Start & End Music:https://redlight-chill.itch.io/spooky-tune-jam-2024
- Sad Trumpet freesound_community (https://pixabay.com/sound-effects/musical-sad-trumpet-46384/) Licensed under Pixabay https://pixabay.com/service/license-summary/
Enemy collision
Fast Collision Reverb: https://pixabay.com/sound-effects/film-special-effects-fast-collision-reverb-14611/
Licence: Sound Effect by <a href="https://pixabay.com/users/freesound_community-46691455/?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=14611">freesound_community</a> from <a href="https://pixabay.com/sound-effects//?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=14611">Pixabay</a>
https://pixabay.com/service/license-summary/

Letter Token sound 
Coin Collision Sound: https://pixabay.com/sound-effects/film-special-effects-coin-collision-sound-342335/
License: Sound Effect by <a href="https://pixabay.com/users/u_vdwj1c20kz-50311970/?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=342335">u_vdwj1c20kz</a> from <a href="https://pixabay.com/sound-effects//?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=342335">Pixabay</a>
https://pixabay.com/service/license-summary/

Eat sound (chomp)
EatingSFX.wav: https://pixabay.com/sound-effects/people-eatingsfxwav-14588/
License: Sound Effect by <a href="https://pixabay.com/users/freesound_community-46691455/?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=14588">freesound_community</a> from <a href="https://pixabay.com//?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=14588">Pixabay</a>
https://pixabay.com/service/license-summary/

Cat swooshing sound (swoosh)
Swoosh Sound Effect for Fight Scenes or Transitions - 2: https://pixabay.com/sound-effects/film-special-effects-swoosh-sound-effect-for-fight-scenes-or-transitions-2-149890/
License: Sound Effect by <a href="https://pixabay.com/users/dheerajakam4jor-36410348/?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=149890">Dheeraj M4JOR</a> from <a href="https://pixabay.com//?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=149890">Pixabay</a>
https://pixabay.com/service/license-summary/

Jump sound
Jump and spark: https://pixabay.com/sound-effects/film-special-effects-jump-and-spark-6136/
License: Sound Effect by <a href="https://pixabay.com/users/freesound_community-46691455/?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=6136">freesound_community</a> from <a href="https://pixabay.com/sound-effects//?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=6136">Pixabay</a>
https://pixabay.com/service/license-summary/


---

## Tech Stack
- Game Engine: GameMaker  
- Platform: PC  

---

## Notes
- Designed for keyboard and mouse  
- Best experienced through exploration and discovery 
