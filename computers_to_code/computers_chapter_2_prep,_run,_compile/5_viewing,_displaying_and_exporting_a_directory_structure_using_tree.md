# To display the directory structure of your project codebase, you can use the 'tree' command in Windows Command Prompt/powershell. Here's how to do it:

- Open Command Prompt
- Navigate to your woflang root directory (e.g., cd C:\woflang)
- Run the tree command:

`tree /F`

The `/F` option shows both files and directories (without it, you'd only see the directory structure).


If you want to save the output to a file for easier viewing, you can redirect it:
`tree /F > woflang_structure.txt`

This will create a text file with your entire directory structure, which you can then view in any text editor.


If you have a very large project and want to limit the depth of directories shown, you can use:
`tree /F /A`

The `/A` option uses ASCII characters instead of extended characters for the tree display, which can be more compatible with some text editors.


`-h` will display hidden files
`-a` will display all files in a tree not just folders

 