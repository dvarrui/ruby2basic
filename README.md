
# Ruby2Basic::ZXSpectrum

```
Traducir scripts Ruby a programas BASIC del ZX Spectrum
```

Este es un proyecto que hago sólo por diversión para generar programas BASIC para las consolas retro de los 80 usando Ruby.

> **NOTA**: Estoy usando como referencia el lenguaje BASIC del ZX Spectrum.

## Instalación

* Instalar Ruby.
* Instalar la gema `gem install ruby2basic`

## Usage

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

## Features

* Lee la estructura secuencial.
* Los comentarios a `REM`.
* Definir variables `String` e `Integer`.
* Método `puts` a `PRINT`. Se aceptan los String embebidos.
* Método `times` a `FOR`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dvarrui/dsl-python.
