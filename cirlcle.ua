Size ← 200										# mida del gif
Frames ← 40										# nombre de frames
Color ← [1 0 1]								# color per aplicar a la màscara
Sin ← ○÷5											# funció sinusoidal aplicada
Round ← ⍜(×1e3)⁅							# arredonir a les 3 xifres
Pytha ← √+ⁿ2:ⁿ2								# pitàgores per calcular la distancia
Mask ← ⊞⋅⋅Color.⊚ Size				# màscara de color

⇡.Size												# fer frame
.-⌊÷2:												# centrar-lo
⊠(Sin Round Pytha)						# fer els cercles
×Mask-0.6.										# aplicar mascara
⊟×Mask-0.6,									# afegir el següent frame
⍥(⊂×Mask+0.1⊢.)⌈÷2-1 Frames	# meitat de frames cap dalt
⍥(⊂×Mask-0.1⊢.)⌊÷2-1 Frames	# meitat cap baix
;:
