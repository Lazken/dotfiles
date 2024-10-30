# nvim cheatsheet
===

### Basic Vim motions
#### Movement
hjkl
left up down right
w
beginning next word
b
beginning previous word
e
end of word
ge
end of word backwards

W B E gE
Equivalant, but for WORDS insteads of words. (WORDS include .(){}

##### horizontal

f
move to a specific character, (F same but backwards)
f(
go to first ( on the line
t
move to just before specific character
t(
go to one character before first(

0
go to beginning of line
^
go to first non-blank characer of a line
$
end of line
g_
moves to last non blank character of the line

##### vertical

}
paragraph down, { goes up
ctrl-D
down half a page
ctrl-U
up half a page

##### searching
/
search forward
?
search backward

##### semantically
gd
jump to definition of whatever under your cursor
gf
jump to file in an import

##### others
gg
top of file
G
bottom of file

%
go to matching ({[]})

#### Operators
c
change, cc change whole line, C changes from cursor to end of line
d
delete, dd delete whole line, D deletes from cursor to end of line
y
yank, yy copies whole line, Y copies from cursor to end of line
p
paste, P pastes before the cursor

g~
Toggle Case, toggle between lower and upper case, you can use gu to make a word lowercase, and gU to make something uppercase
gUw makes word uppercase

>
adds indent
>
removes indent

ggyG
copies whole document
c/hello
changes everything up to first occurance of hello


#### Auto indent
=

##### Examples
f{v%=
goes to first { in the line, select everything to its closing }, and auto indent
=10j
autoindent next 10 lines


### Neo-Tree:
* 'Ctrl-n': Open filesystem explorer
* '\<leader>bf': Float window open buffers

#### Inside
Once inside the tree, 
* jk to move up/down
* a to add file/directory
* P to preview file
* t open in new tab
* w open with window picker
* C close node
* z close all nodes
* d delete
* r rename
* y yank
* x cut
* p paste/put
* c copy text
* q close window
* R refresh
* i file details
* om order by modified
* on order by name

### Telescope:
* 'Ctrl-p': Fuzzy find file
* '<leader>fg': Grep across files
* '<leader><leader>': Recent files

### Lsp:
* '<leader>ca': Code actions
* 'K': Hover() Documentation on keyword under cursor

#### Autocompletion & snippets
Ctrl-n
move down list
Ctrl-p
move up list
Ctrl-e
abort autocomplete
Ctrl-y
confirm (<CR> also fine)

## Window Management

#### Semantics
Buffer -> file text in memory
Window -> viewport on buffer
Tab -> Collection of windows

#### Keybinds
###### ctrl-W, followed by:
* s
split horizontal
* v
split vertical
* q
quit window
* o
close all other windows
* r
rotate windows down/right (R oposite direction)
* x
switch window with next one
* K
moves current window to top full width
* J
moves current window to bottom full
* H
far left full height
* L
far right full heigt
* T
move window to new tab, fails if only one window
* '='
equal all windows in size
* '-'
make window smaller
* '+'
make window bigger
* gt
go to next tab
* gT
ro to previous tab
* CTRL-hjkl
move between windows


