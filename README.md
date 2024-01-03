## Carlos' Personal Scripts

This repository is for all my personal scripts which I think can help save me some time. 

### List of scripts:

1. `get_length.sh` . This script is used for getting the length of a word. It can get the length of a single word, or multiple words. I hate having to manually count the number of characters there are in a long word, so I usually used python's `len()` function. I found this to be cumbersome, especially when I forget to insert the quotation marks and have to retype the command. Thus this script was born. 

2. `leetcode_search.sh`. This script is used for opening up leetcode with the problem you want. This was used because copy-pasting the problem name from my google
doc and searching for it felt mildly tedious.

## Note to self

I have these scripts added to my path in the .zshrc file, under the home directory. I have them aliased as well. 
e.g) alias len="/Users/carloshuang/my_scripts/getLength.sh"

Also need to add permissions to it via:

`chmod +x /Users/carloshuang/my_scripts/getLength.sh`

The `+x` flag gives the script execution permissions
