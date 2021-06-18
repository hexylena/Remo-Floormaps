f=$(mktemp)
sed 's/inkscape:label="[^"]*"//g;s/inkscape:connector-curvature="0"//g;s/id="path[^"]*"//g;s/\t//g' < "$1" | \
	sed "s|font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:16px;font-family:'Exo 2';-inkscape-font-specification:'Exo 2, ';||g" | \
	sed "s|font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-family:'Exo 2';-inkscape-font-specification:'Exo 2, ';||g" | \
	sed "s|fill-opacity:1;||g;s|;fill-opacity:1||g;s|fill-opacity:1||g;s|stroke-opacity:1;||g;s|;stroke-opacity:1||g;s|stroke-opacity:1||g;s|stop-opacity:1;||g;s|;stop-opacity:1||g;s|stop-opacity:1||g;s|opacity:1;||g;s|;opacity:1||g;s|opacity:1||g;" | \
	tr -d '\n' > "$f"
mv "$f" "$1"
