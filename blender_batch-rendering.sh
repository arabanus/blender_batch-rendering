# !/bin/bash
##############################################################################
# PLACE THIS FILE IN THE DIRECTORY WITH THE BLENDER FILES YOU WANT TO RENDER # 
##############################################################################

# fixed variables, might need changing if executed on differen machine!
BLENDER_PATH="file/path/to/blender"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# look through current dir to find all .blend files
echo "Found these .blend files:"
echo "*.blend"
for file in *.blend; do
    # Get the base name of the file (without extension)
    base_name=$(basename "$file" .blend)

    # create dir for saving animaiton
    export_dir="${base_name}_render"
    mkdir -p "$export_dir"

    # render animation in chosen file and save it in the dir
    echo "Rendering $file into $export_dir..."
    "$BLENDER_PATH" -b "$file" -o "$SCRIPT_DIR/$export_dir/${base_name}_frame_" -a

    echo "Rendering completed for $file."
    echo "moving on to next file"
done

echo "All files rendered"
