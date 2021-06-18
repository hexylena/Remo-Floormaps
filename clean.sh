f=$(mktemp)
sed 's/inkscape:label="[^"]*"//g;s/inkscape:connector-curvature="0"//g;s/id="path[^"]*"//g;s/\t//g' < "$1" | tr -d '\n' > "$f"
mv "$f" "$1"
