# Laboratorio de Emprendimiento y Transformación - LET

Este repositorio contiene las fuentes de la Escuela de Gobierno y Transformación
Pública del Tecnológico de Monterrey.


## Instalación / Configuración

Necesitamos tener instaladas las dependecias, bastará el siguiente comando:


```console
bundle install
```

El  segundo paso es iniciar el servidor local, en este caso agregamos la
opción `--watch` para que se regenere el sitio cuando se detectan cambios en
las fuentes.

```console
bundle exec jekyll server --watch
```

También, si gustas que las páginas se actualizen necesitarás tener instalada una
extensión para tu navegador y ejecutar el siguiente comando.

```console
bundle exec guard
```

## Licencia

Ver [Licencia](/LICENSE)
