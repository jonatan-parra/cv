# Taller raster

## Propósito

Comprender algunos aspectos fundamentales del paradigma de rasterización.

## Tareas

Emplee coordenadas baricéntricas para:

1. Rasterizar un triángulo; y,
2. Sombrear su superficie a partir de los colores de sus vértices.

Referencias:

* [The barycentric conspiracy](https://fgiesen.wordpress.com/2013/02/06/the-barycentric-conspirac/)
* [Rasterization stage](https://www.scratchapixel.com/lessons/3d-basic-rendering/rasterization-practical-implementation/rasterization-stage)

Opcionales:

1. Implementar un [algoritmo de anti-aliasing](https://www.scratchapixel.com/lessons/3d-basic-rendering/rasterization-practical-implementation/rasterization-practical-implementation) para sus aristas; y,
2. Sombrear su superficie mediante su [mapa de profundidad](https://en.wikipedia.org/wiki/Depth_map).

Implemente la función ```triangleRaster()``` del sketch adjunto para tal efecto, requiere la librería [frames](https://github.com/VisualComputing/frames/releases).

## Integrantes

Dos, o máximo tres si van a realizar al menos un opcional.

Complete la tabla:

| Integrante    | github nick |
|---------------|-------------|
| Kevin Castro  | keacastroga |
| Jonatan Parra | jonatan360  |

## Discusión

Describa los resultados obtenidos. En el caso de anti-aliasing describir las técnicas exploradas, citando las referencias:

Se observó el funcionamiento de las coordenadas baricéntricas en el proceso de rasterizar un triangulo, ademas se observo la posibilidad de interpolar las propiedades del triángulo usando las coordenadas baricéntricas, en este ejemplo se interpolan los colores sobre la superficie según los colores definidos en los vértices.

Para la implementaion de anti-aliasing se uso el metodo de multisamplig definido en la pagina [algoritmo de anti-aliasing](https://www.scratchapixel.com/lessons/3d-basic-rendering/rasterization-practical-implementation/rasterization-practical-implementation), tomando cuatro mustras en las esquinas de cada pixel; para cada muestra se calcula si esta dentro o no del triangulo y se guarda el numero que esta adentro en la variable inside, luego se multiplica cada componente rgb del pixel por inside y se divide por 4, se tendra el color completo si las cuatro muestras estan dentro del triangulo y si no el color se vera un poco menos intenso, el anti-aliasing puede ser prendido y apagado con la tecla 'a'. 
## Entrega

* Modo de entrega: [Fork](https://help.github.com/articles/fork-a-repo/) la plantilla en las cuentas de los integrantes.
* Plazo: 30/9/18 a las 24h.
