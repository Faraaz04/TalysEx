# Predefined paths
# Input file directory path:
INPUT_DIR=""
# Output file directory path:
OUTPUT_DIR=""

# Prompt the user for the input and output file names
read -p "Enter the input file name: " INPUT_FILE
read -p "Enter the output file name: " OUTPUT_FILE

# Construct the full paths
FULL_INPUT_PATH="${INPUT_DIR}${INPUT_FILE}"
FULL_OUTPUT_PATH="${OUTPUT_DIR}${OUTPUT_FILE}"

# echo "$FULL_INPUT_PATH"
# echo "$FULL_OUTPUT_PATH"

# Check if the input file exists
if [[ ! -f "$FULL_INPUT_PATH" ]]; then
    echo "Error: Input file '$FULL_INPUT_PATH' does not exist."
    exit 1
fi

# Run talys with the input and output file paths as arguments
# cat "$FULL_INPUT_PATH" >> "$FULL_OUTPUT_PATH"
# /home/UserDirectory/Software/TALYS/talys1.97/bin/talys < "$FULL_INPUT_PATH" > "$FULL_OUTPUT_PATH"

/home/UserDirectory/Software/talys/talys1.97/bin/talys < "$FULL_INPUT_PATH" > "$FULL_OUTPUT_PATH"

# gedit is now gnome-text-editor, so gedit "$FULL_OUTPUT_PATH" will be changed to:
gnome-text-editor "$FULL_OUTPUT_PATH"
