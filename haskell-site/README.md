# microretailx-hs

Implementación **Haskell pura** de la landing de microretailX, estructurada con enfoque senior:

- `app/`: punto de entrada.
- `src/MicroRetailX`: capas de aplicación (`Config`, `App`, `Routes`).
- `static/`: assets y páginas estáticas (misma UI/UX del sitio actual).

## Requisitos

- GHC
- Cabal

## Ejecutar en local

```bash
cd haskell-site
cabal run microretailx-hs
# http://localhost:8080
```

Puerto configurable por variable de entorno:

```bash
PORT=5173 cabal run microretailx-hs
```

## Estructura

```text
haskell-site/
├── app/Main.hs
├── src/MicroRetailX/
│   ├── App.hs
│   ├── Config.hs
│   └── Routes.hs
├── static/
│   ├── index.html
│   ├── terms.html
│   ├── privacy.html
│   ├── cookies.html
│   ├── legal.html
│   └── assets/
│       ├── app.js
│       ├── consent.js
│       ├── i18n.js
│       ├── styles.css
│       ├── ui-lang-rail.js
│       ├── ui-verticals.js
│       ├── og-image.jpg
│       └── locales/*.json
└── microretailx-hs.cabal
```
