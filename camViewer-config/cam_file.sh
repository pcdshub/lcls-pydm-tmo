#!/bin/bash

# Read each line from the file 'cam.cfg'
while IFS= read -r line; do
    # Create a filename using the current line value, with a '.cmd' extension
    filename="${line}.cmd"
    
    # Write the shebang line to the new file to indicate it's a bash script
    echo "#!/bin/bash" > "$filename"
    
    # Add a command to the file to run 'camViewer' with the specified options
    echo "/reg/g/pcds/engineering_tools/latest-released/scripts/camViewer -m -c ${line}" >> "$filename"

# The input file 'cam.cfg' contains the list of names or values to process
done < cam.cfg
