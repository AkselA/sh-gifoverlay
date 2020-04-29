#!/bin/bash

usage () {
  cat <<HELP_USAGE

  $0 adds an overlay to a GIF. This is done by
  compositing (using IM) each frame with a supplied image.

  Usage: $0 <gif> <overlay> <output>

  <gif>      Input GIF
  <overlay>  Overlay image
  <output>   Output file name (optional)

HELP_USAGE
exit 1
}

[ -z "$2" ] && { usage; }

if [ -z "$3" ]
  then
    out="${1%.*}-${2%.*}.gif"
  else
    out="$3"
fi

gifsicle -E -o explodedgif_gifoverlay "$1"

for f in explodedgif_gifoverlay.*
do 
    convert "$f" "$2" -composite "$f"
done

# gifsicle --loopcount --colors 256 explodedgif_gifoverlay.* > "$out"

gifsicle "$1" --replace "#0--1" explodedgif_gifoverlay.* --colors 256 > "$out"

rm explodedgif_gifoverlay.*


# gifsicle -d 40 < g.gif > gi.gif 