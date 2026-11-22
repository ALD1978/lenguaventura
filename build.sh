#!/bin/sh
# Genera index.html (instalable en la tablet) a partir de juego.html
cd "$(dirname "$0")"
{
  echo '<!doctype html><html lang="es"><head><meta charset="utf-8">'
  echo '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">'
  echo '<meta name="theme-color" content="#3767F0"><link rel="manifest" href="manifest.json"><link rel="icon" href="icon-192.png"><link rel="apple-touch-icon" href="icon-192.png">'
  echo '<style>:root{padding-top:env(safe-area-inset-top);padding-bottom:env(safe-area-inset-bottom)}body{margin:0}[hidden]{display:none!important}</style>'
  echo '</head><body>'
  cat juego.html
  echo '<script>if("serviceWorker" in navigator) navigator.serviceWorker.register("sw.js").catch(()=>{});</script>'
  echo '</body></html>'
} > index.html
