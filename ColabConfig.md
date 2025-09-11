# Configuración de Julia en Google Colab

[<img src="https://img.shields.io/badge/README-Ver%20README-blue?style=flat-square" alt="Ver README" height="18">](./README.md)

## Introducción

Google Colab es una plataforma gratuita que permite ejecutar notebooks de Jupyter en la nube. Por defecto, Colab utiliza Python como lenguaje de programación, pero es posible configurarlo para usar Julia siguiendo los pasos que se describen a continuación.

## Cambiar el Runtime a Julia

1. **Reinicia el runtime**: Ve al menú `Runtime` → `Restart runtime`
2. **Cambia el kernel**:
   - Ve al menú `Runtime` → `Change runtime type`
   - En el dropdown que dice "Runtime type", selecciona `Julia`
   - En "Hardware accelerator", seleccion `CPU`
   - En el dropdown "Runtime version", selecciona `Latest (recommended)`
   - Haz clic en `Save`

### Paso 4: Verificar la Configuración

Ejecuta la siguiente celda para verificar que Julia está funcionando correctamente:

```julia
# Verificar la versión de Julia
println("Julia version: ", VERSION)

# Verificar los paquetes pre-instalados
using Pkg; Pkg.status()
```

## Solución de Problemas Comunes

### Problema: Error al cambiar el runtime

**Solución**: Intenta refrescar la página.

### Problema: El notebook se queda "conectando"

**Solución**: Reinicia el runtime (`Runtime` → `Restart and run all`) y espera unos segundos para que se establezca la conexión.

## Notas Importantes

- ⚠️ **Importante**: La sesión de Colab se reinicia automáticamente después de 12 horas de inactividad o cuando se cierre el navegador. Tendrás que volver a cambiar el runtime a Julia.
- 📦 **Paquetes**: Los paquetes instalados se mantendrán durante la sesión, pero se perderán al reiniciar.
- 🔄 **Runtime gratuito**: Google Colab ofrece acceso gratuito limitado. Para sesiones más largas o mayor poder de cómputo, considera Colab Pro.

## Recursos Adicionales

- [Documentación oficial de Julia](https://docs.julialang.org/)
- [Paquetes de Julia](https://juliapackages.com/)
