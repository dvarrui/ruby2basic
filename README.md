
# Ruby2Basic

```
Traducir scripts Ruby a programas BASIC del ZX Spectrum
```

Este es un proyecto que hago sólo por diversión para generar programas BASIC para las consolas retro de los 80 usando Ruby.

> **NOTA**: Estoy usando como referencia el lenguaje BASIC del ZX Spectrum.

## Instalación

* Instalar Ruby.
* Se requiren los siguientes paquetes: `gcc`, `make` y `ruby-dev` para compilar el parser.
* Instalar la gema `gem install ruby2basic`

## Usage

**Usar en modo comando (CLI)**

* Crear un programa en Ruby:

```ruby
# Bucle
text = "I love 80s retro style!"

5.times do |i|
  puts text
end
```

* Aplicar el traductor:

```ruby
$ ./ruby2basic examples/03-bucle.rb 

10 REM Bucle
20 LET text$ = "I love 80s retro style!"
30 FOR i = 0 TO 4
40 PRINT text$
50 NEXT i
60 STOP
```

> Más [ejemplos](./examples/)

**Usar en modo biblioteca**

* Importamos la gema `ruby2basic`.

```ruby
require "ruby2basic"

source = <<-CODE
  puts "Hello, World!"
CODE
```

* Transpilamos con la clase `Ruby2Basic::ZXSpectrum::Tranpiler`.

```ruby
r2b = Ruby2Basic::ZXSpectrum::Transpiler.new
puts r2b.call(source)

#=> 10 PRINT "Hello, World!"
#=> 20 STOP
```

## Features

Ruby:

* Lińeas de comentarios.
* Estructura secuencial.
* Variables con tipo `String` e `Integer`.
* Método `puts`. Se aceptan los String embebidos.
* Estructura repetitiva.
* Método `times` a `FOR`.
* Estructura condicional.

BASIC ZX Spectrum:

* REM: Líneas de comentarios.
* LET: Asigna valores a variables.
* PRINT: Muestra texto o números en pantalla.
* STOP: Detiene la ejecución (vital para separar el cuerpo principal de las subrutinas).

* FOR: Inicia un bucle con una variable de control.
* TO: Define el límite superior del bucle FOR.
* NEXT: Cierra el bucle FOR.
* IF: Evalúa una condición lógica.
* THEN: Indica la acción a seguir si el IF es verdadero.
* GOTO: Salto incondicional a una línea específica.

* STR$: Convierte un número en una cadena de texto.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dvarrui/dsl-python.
