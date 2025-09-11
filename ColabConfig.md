# Configuración de Julia en Google Colab

## Introducción

Google Colab es una plataforma gratuita que permite ejecutar notebooks de Jupyter en la nube. Por defecto, Colab utiliza Python como lenguaje de programación, pero es posible configurarlo para usar Julia siguiendo los pasos que se describen a continuación.

## Cambiar el Runtime a Julia

1. **Reinicia el runtime**: Ve al menú `Runtime` → `Restart runtime`
2. **Cambia el kernel**:
   - Ve al menú `Runtime` → `Change runtime type`
   - En el dropdown que dice "Runtime type", selecciona `Julia`
   - Haz clic en `Save`

### Paso 4: Verificar la Configuración

Ejecuta la siguiente celda para verificar que Julia está funcionando correctamente:

```julia
# Verificar la versión de Julia
println("Julia version: ", VERSION)

# Verificar que los paquetes básicos funcionan
using Pkg
println("Paquetes instalados:")
Pkg.status()
```

## Instalación de Paquetes Adicionales

Para instalar paquetes adicionales de Julia que utilizaremos en el curso:

```julia
using Pkg

# Paquetes para análisis de datos
Pkg.add(["DataFrames", "CSV", "Plots", "StatsPlots"])

# Paquetes para análisis geoespacial
Pkg.add(["ArchGDAL", "GeoInterface", "GeoDataFrames"])

# Otros paquetes útiles
Pkg.add(["BenchmarkTools", "PlutoUI"])
```

## Solución de Problemas Comunes

### Problema: No aparece Julia en las opciones de Runtime

**Solución**: Asegúrate de estar usando la versión más reciente de Google Colab. Si no aparece Julia, puede ser que tu cuenta necesite acceso a la funcionalidad. Intenta crear un nuevo notebook.

### Problema: Error al cambiar el runtime

**Solución**: Intenta refrescar la página y crear un nuevo notebook con Julia desde el inicio.

### Problema: El notebook se queda "conectando"

**Solución**: Reinicia el runtime (`Runtime` → `Restart and run all`) y espera unos segundos para que se establezca la conexión.

## Notas Importantes

- ⚠️ **Importante**: La sesión de Colab se reinicia automáticamente después de 12 horas de inactividad o cuando se cierre el navegador. Tendrás que volver a cambiar el runtime a Julia.
- 📦 **Paquetes**: Los paquetes instalados se mantendrán durante la sesión, pero se perderán al reiniciar.
- 🔄 **Runtime gratuito**: Google Colab ofrece acceso gratuito limitado. Para sesiones más largas o mayor poder de cómputo, considera Colab Pro.

## Recursos Adicionales

- [Documentación oficial de Julia](https://docs.julialang.org/)
- [Tutoriales de Julia para principiantes](https://julialang.org/learning/)
- [Paquetes de Julia](https://juliapackages.com/)
