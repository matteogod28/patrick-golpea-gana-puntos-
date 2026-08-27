Godot 4 — Stickman Hit Demo

Instrucciones rápidas:
1) Estructura recomendada:
   - scenes/Stickman.tscn
   - scenes/Main.tscn
   - scripts/Stickman.gd
   - scripts/Main.gd
   - assets/ (tus sprites/sonidos)

2) Reemplaza la textura en Sprite2D (res://scenes/Stickman.tscn) por tu sprite.
   Ajusta extents de RectangleShape2D si hace falta para cubrir el sprite.

3) Desde Godot:
   - Abrir el proyecto (la carpeta donde pegaste estos archivos).
   - Opcional: en Project Settings → Run → Main Scene, asigna res://scenes/Main.tscn.
   - Ejecutar la escena principal. Haz click/tap sobre el muñeco para sumar puntos.

Notas:
- Si quieres cooldown entre golpes, dime y lo agrego fácil.
- Puedes cambiar points_per_hit desde el inspector cuando selecciones el nodo Stickman.
