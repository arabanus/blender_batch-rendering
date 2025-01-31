# Blender Batch Render Script

This script allows you to render all `.blend` files in a directory using Blender. It is compatible with Linux, macOS, and Windows (using Git Bash).

## Prerequisites

1. **Blender Installed**: Ensure Blender is installed on your system. You will need to update the `BLENDER_PATH` variable with your local path in the script.

2. **Bash Environment**: 
   - On Linux and macOS, you can use the default terminal.
   - On Windows, you need to have Git Bash installed. You can download it from [Git for Windows]((https://git-scm.com/downloads).

## Usage

1. **Place the Script in the Target Directory**:
   - Copy the script file (e.g., `blender_batch-rendering.sh`) into the directory containing the `.blend` files you want to render.

2. **Make the Script Executable**:
   - Open a terminal and navigate to the directory where the script is located.
   - Run the following command to make the script executable:
     ```bash
     chmod +x blender_batch-rendering.sh
     ```

3. **Run the Script**:
   - **Linux/macOS**:
     - In the terminal, run:
       ```bash
       ./blender_batch-rendering.sh
       ```
   - **Windows (Git Bash)**:
     - Open Git Bash and navigate to the directory where the script is located.
     - Run:
       ```bash
       ./blender_batch-rendering.sh
       ```

4. **Monitor the Rendering Process**:
   - The script will print messages to the terminal as it processes each `.blend` file.
   - For each file, it will create a directory named `<filename>_render` and save the rendered frames there.

5. **Completion**:
   - Once all `.blend` files have been processed, the script will print "All files rendered".

## Customization

- **Blender Path**: If Blender is installed in a different location, update the `BLENDER_PATH` variable in the script to point to the correct `blender.exe` or `blender` executable.

- **Output Directory**: The script creates a directory for each `.blend` file with the suffix `_render`. You can modify the script to change the naming convention or the location of the output directories.

## Example

Assume you have the following files in your directory:
- `animation1.blend`
- `animation2.blend`

Running the script will:
1. Create directories `animation1_render` and `animation2_render`.
2. Render `animation1.blend` and save the frames in `animation1_render`.
3. Render `animation2.blend` and save the frames in `animation2_render`.
4. Print "All files rendered" when done.

```
/home/user/projects/blender/
├── batch-renderer_macos-linux.sh
├── animation1.blend
├── animation1_render/
│   ├── animation1_frame_0001.png
│   ├── animation1_frame_0002.png
│   └── ...
├── animation2.blend
└── animation2_render/
    ├── animation2_frame_0001.png
    ├── animation2_frame_0002.png
    └── ...
```

## Troubleshooting

- **Blender Not Found**: If you encounter an error stating that Blender is not found, double-check the `BLENDER_PATH` variable in the script and ensure it points to the correct Blender executable.

- **Permission Denied**: On Linux/macOS, if you get a "Permission denied" error, ensure the script is executable by running `chmod +x render_blend_files.sh`.

- **Script Not Running on Windows**: Ensure you are using Git Bash and not the default Command Prompt or PowerShell.

## License

This script is provided as-is, without any warranties. Feel free to modify and distribute it as needed.

---

Enjoy rendering your Blender files in bulk!
