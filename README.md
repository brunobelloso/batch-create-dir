## Batch Create Dir Structure

**Description:** This batch script takes a directory tree with files as input from a text file and creates the respective folders and files with the respective extensions.

**Usage:**
1. Prepare a text file named `structure.txt`.
2. In `structure.txt`, list the directory tree structure with files, each on a separate line, in the format:
    ```
    path/to/directory/file.extension
    ```
3. Run the `run.bat` script.

**Example Structure.txt:**
```
folder/
folder/example_file_1.txt
folder/subfolder/
folder/subfolder/example_file_2.txt
```