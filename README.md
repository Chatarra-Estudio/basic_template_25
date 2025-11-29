# basic_template_25

-----------------------------------------------------------------------------------------------------------
## Murcia Game Jam 2025

Plantilla de inicio

https://github.com/Chatarra-Estudio/basic_template_25/tree/1014341c4453ed15ae3b67a79f654af997b8b2cd

## M-Jam25
<div align="center">
  <img src="https://www.informajoven.org/recursos/fichas/actividades/30398.jpg" alt="Descripción de la imagen" width="400"/>
</div>

https://www.informajoven.org/convocatorias/actividades/30398/murcia-game-jam-2025

https://www.ceeim.es/es/eventos/murcia-game-jam-2025/

-----------------------------------------------------------------------------------------------------------

Mis recomendaciones: Modelos 3D

https://trellis3d.co/online 

https://www.meshy.ai/ por créditos y sin texturas

https://github.com/Chatarra-Estudio/Virtual-Joytick-3d/blob/main/modelos/modelos.md enlaces modelos en Blender

-----------------------------------------------------------------------------------------------------------

Red Rock con modelos

https://github.com/Chatarra-Estudio/basic_template_25/tree/d8d0a1d8e923e9b0b6e05de6e95b4d066f8c2f86

-----------------------------------------------------------------------------------------------------------

https://huggingface.co/spaces/JeffreyXiang/TRELLIS

-----------------------------------------------------------------------------------------------------------

Sonido DJ Frage

https://github.com/Chatarra-Estudio/basic_template_25/tree/7a74e4540f390a34f59d48e883946284ea905a77

-----------------------------------------------------------------------------------------------------------

Template para Blobfish

https://github.com/Chatarra-Estudio/basic_template_25/tree/318e7c83f0bb9bfcf99281823ac41e799e41e601

----------------------------------------------------------------------------------------------------------

Plantila general

https://github.com/Chatarra-Estudio/Virtual-Joytick-3d

---------------------------------------------------------------------------------------------------------

# Truck Town

This is a demo implementing different types of trucks of
varying complexity using vehicle physics.

Controls:

- <kbd>Up Arrow</kbd>, <kbd>W</kbd>, <kbd>Gamepad Right Trigger</kbd>, <kbd>Gamepad A/Cross</kbd>: Accelerate
- <kbd>Down Arrow</kbd>, <kbd>S</kbd>, <kbd>Gamepad Left Trigger</kbd>, <kbd>Gamepad B/Circle</kbd> : Brake
- <kbd>Left Arrow</kbd>, <kbd>Gamepad Left Stick</kbd>: Steer left
- <kbd>Right Arrow</kbd>, <kbd>Gamepad Left Stick</kbd>: Steer right
- <kbd>U</kbd>, <kbd>Gamepad Select</kbd>, left-click speedometer: Change speedometer unit (m/s, km/h, mph)
- <kbd>C</kbd>, <kbd>Gamepad Y/Triangle</kbd>: Change camera (exterior, interior, top-down)
- <kbd>Escape</kbd>, <kbd>Gamepad D-Pad Up</kbd>: Go back to menu (press again to exit)

Language: GDScript

Renderer: Forward Plus

Check out this demo on the asset library: https://godotengine.org/asset-library/asset/524

## How does it work?

The base vehicle uses a
[`VehicleBody`](https://docs.godotengine.org/en/latest/classes/class_vehiclebody.html)
node. The trailer truck is tied together using a
[`ConeJointTwist`](https://docs.godotengine.org/en/latest/classes/class_conetwistjoint.html)
node, and the tow truck is tried together using a chain made of
[`RigidBody`](https://docs.godotengine.org/en/latest/classes/class_rigidbody.html)
nodes which are pinned together using
[`PinJoint`](https://docs.godotengine.org/en/latest/classes/class_pinjoint.html) nodes.

## Screenshots

<img src="https://raw.githubusercontent.com/godotengine/godot-demo-projects/ad2cdfebd46c1e50dac5b14134fbadbef15076e8/3d/truck_town/screenshots/truck_town.webp" width="700">

-------------------------------------------------------------------------------------------------------


El germen del proyecto de producir unos controles 3d surgió de un intento, no satisfactorio, para una Game Jam de pocas horas donde. El objetivo de nuestro proyecto era hacer unos controles básicos para un submarino. Finalmente tenemos una plantilla con joytick virtual t movimiento en 3d:

Plantilla proyecto editable original solo movimiento con joystick virtual, para que vaya bien en movil

https://github.com/Chatarra-Estudio/Virtual-Joytick-3d/tree/437d8bb987b4bb11bce31ce0715674a3b5abe02a
Juego:
https://josegarciamoreno.github.io/Chatarra-Estudio/landing2023/ferdi/3d.html

--------------------------------------------------------------------------------------------------

Pruebas de 3d

https://3d.csm.ai/login

https://josegarciamoreno.github.io/Chatarra-Estudio/landing2023/sensor/acelera.html (Probando giroscopio: no va)

https://josegarciamoreno.github.io/Chatarra-Estudio/landing2023/submarino/amarillo.html Interfaz chatarrero para movil

Virtual joystick for touchscreens, with useful options.

<img src="https://raw.githubusercontent.com/Chatarra-Estudio/Virtual-Joytick-3d/586eb2ef595721dd4ea31b958722a5f79b96f149/ferdi/joystick3d.jpg">


Godot Virtual Joystick
Aquí unos controles chatarreros de kinemático 3d con suelo plano para exportar en html.
--------------------------------------------------------------------------------------------------

# Godot Virtual Joystick

<img src="https://raw.githubusercontent.com/MarcoFazioRandom/Virtual-Joystick-Godot/840bf4c5b0b7df277ee58192abd9306d2e99a4f8/previews/icon.png" width="300">

A simple virtual joystick for touchscreens, with useful options.

GitHub Page: https://github.com/MarcoFazioRandom/Virtual-Joystick-Godot

Godot Engine: https://godotengine.org

### PREVIEWS:

<img src="https://raw.githubusercontent.com/MarcoFazioRandom/Virtual-Joystick-Godot/840bf4c5b0b7df277ee58192abd9306d2e99a4f8/previews/preview1.png" width="500">

Easy to setup:  
<img src="https://raw.githubusercontent.com/MarcoFazioRandom/Virtual-Joystick-Godot/840bf4c5b0b7df277ee58192abd9306d2e99a4f8/previews/preview2.png" width="300">

Easy to use:  
<img src="https://raw.githubusercontent.com/MarcoFazioRandom/Virtual-Joystick-Godot/840bf4c5b0b7df277ee58192abd9306d2e99a4f8/previews/preview2.png" width="500">

### OPTIONS:  

- Joystick mode: 
	- Fixed: The joystick doesn't move. 
	- Dynamic: Every time the joystick area is pressed, the joystick position is set on the touched position. 

- Dead zone size: If the tip is inside this range the output is zero.

- Clamp zone size: The max distance the tip can reach.

- Visibility mode: 
	- Always: Always visible.
	- touchscreen only: Visible on touch screens only (will hide if the device has not a touchscreen).

- Use input actions: if true the joystick will trigger the input actions created in Project -> Project Settings -> Input Map

### HELP:  
- The Control parent of the joystick is the area in which the joystick can move in Dynamic mode.  
- For moving the joystick inside his area, select it, right click, turn on "Editable Children" and then change the position of the Base node.  
- With "Editable Children" turned on you can also edit the joystick textures and colors.  
- To be able to use the joystick with the mouse, you have to go to Project settings -> Input Devices -> Pointing, and turn on the option "emulate touch from mouse".
- If you want multitouch, make sure to disable the option "emulate mouse from touch".
- Create a CanvasLayer node and name it "UI", it'll contain all the UI elements, then add the Joystick scene as a child of the UI node and move it where you prefer.  
- An example scene is provided in the "Test" folder.  

