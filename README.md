![VIM](https://dnp4pehkvoo6n.cloudfront.net/43c5af597bd5c1a64eb1829f011c208f/as/Ultimate%20Vimrc.svg)

# The Ultimate vimrc

Over the last 10 years, I have used and tweaked Vim. This configuration is the ultimate vimrc (or at least my version of it).

There are two versions:

* **The Basic**: If you want something small just copy [basic.vim](https://github.com/glacier-hug/vimrc/blob/master/vimrcs/basic.vim) into your ~/.vimrc and you will have a good basic setup
* **The Awesome**: Includes a ton of useful plugins, color schemes, and configurations

I would, of course, recommend using the awesome version.


## How to install the Awesome version?
### Install for your own user only
The awesome version includes a lot of great plugins, configurations and color schemes that make Vim a lot better. To install it simply do following from your terminal:

	git clone --recursive --depth=1 https://github.com/glacier-hug/python-and-go-vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_awesome_vimrc.sh
	
### Install for multiple users
To install for multiple users, the repository needs to be cloned to a location accessible for all the intended users.

	git clone --recursive --depth=1 https://github.com/glacier-hug/python-and-go-vimrc.git /opt/vim_runtime
	sh ~/.vim_runtime/install_awesome_parameterized.sh /opt/vim_runtime user0 user1 user2
	# to install for all users with home directories
	sh ~/.vim_runtime/install_awesome_parameterized.sh /opt/vim_runtime --all
	
Naturally, `/opt/vim_runtime` can be any directory, as long as all the users specified have read access.



## How to install the Basic version?

The basic version is just one file and no plugins. Just copy [basic.vim](https://github.com/glacier-hug/vimrc/blob/master/vimrcs/basic.vim) and paste it into your vimrc.

The basic version is useful to install on remote servers where you don't need many plugins, and you don't do many edits.

	git clone --recursive --depth=1 https://github.com/glacier-hug/python-and-go-vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_basic_vimrc.sh


## How to install on Windows?

Use [gitforwindows](http://gitforwindows.org/) to checkout the repository and run the installation instructions above. No special instructions needed ;-)


## How to install on Linux

If you have vim aliased as `vi` instead of `vim`, make sure to either alias it: `alias vi=vim`. Otherwise, `apt-get install vim`


## How to update to latest version?

Just do a git rebase!

    cd ~/.vim_runtime
    git pull --rebase



## Included Plugins

I recommend reading the docs of these plugins to understand them better. Each plugin provides a much better Vim experience!

 | plugin                     | function                                                   | shortcut key                                     |
 | ---                        | ---                                                        | ---                                              |
 | ack.vim                    | substitute of grep                                         | :Ack                                             |
 | ale                        | asynchronous syntactic tool                                | autmoatic                                        |
 | auto-pairs                 | automatic pair                                             | automatic                                        |
 | bufexplorer                | show buffer                                                | leader o                                         |
 | comfortable-motion.vim     | move confortablely                                         | c-u c-d                                          |
 | ctrlp.vim                  | search file  buffer mru                                    | c-f                                              |
 | goyo.vim  vim-zenroom2     | Give a single visual window which is help to write markdow | leader,                                          |
 | indentLine                 | have a indent line which is useful to pytho                | automatic                                        |
 | jedi-vim                   | a python completeion plug                                  | leader jd leader jr leader ju K c-x c-o          |
 | supertab                   | let jedi-vim use tab to completion                         | automatic                                        |
 | mru.vim                    | most recent us                                             | leader f                                         |
 | nerdtree                   | directory tree                                             | F2 F3                                            |
 | nerdtree-git-plugin        | directory tree with git status                             | automatic                                        |
 | open_file_under_cursor.vim | open file under cursor                                     | gf                                               |
 | set_tabline                |                                                            |                                                  |
 | snipmate-snippets          | some template of snipmate                                  | automatic                                        |
 | tabular                    | align tool                                                 | :Tabular /(sign)(:zs)                            |
 | tagbar                     | show tag tree                                              | F4                                               |
 | tlib                       | some lib file which is other plugin's base                 | requirement base                                 |
 | vim-addon-mw-utils         |                                                            |                                                  |
 | vim-colors-solarized       | clolo theme                                                | config file setted                               |
 | vim-commentary             | commentary                                                 | gcc gcu                                          |
 | vim-expand-region          | expand visual region                                       | + -                                              |
 | vim-fugitive               | vim git tool                                               | :Gdiff :Gwrite :Gread :Gcommmit ...              |
 | vim-gitgutter              | shows a git diff in the sign column                        | leader d, leader hh, leader hs, leader hu        |
 | vim-go                     | vim go tools                                               | :GoImport :GoLint                                |
 | vim-indent-object          | add text object for indent                                 | ai ii aI iI                                      |
 | vim-markdown               | vim markdown tools                                         | automatic                                        |
 | vim-repeat                 | can repeat surround plugin                                 | .                                                |
 | vim-rhubarb                | can use Gbrowse to open Github url                         | :Gbrowse                                         |
 | vim-ultisnippet            | a advanced snipmate engine                                 | tab, c-j c-k                                     |
 | vim-snippets               | basic snipmate                                             | tab                                              |
 | vim-surround               | can surroud sign                                           | ds(action)(sign) ys(action)(sign) cs(sign)(sign) |
 | vim-yankstack              | save the yank delete record                                | c-p c-n                                          |




## Key Mappings

The [leader](http://learnvimscriptthehardway.stevelosh.com/chapters/06.html#leader) is `,`, so whenever you see `<leader>` it means `,`.




### Normal mode mappings

Fast saving of a buffer (`<leader>w`):

	nmap <leader>w :w!<cr>
	

Closing of the current buffer(s) (`<leader>bd` and (`<leader>ba`)):
	
	" Close current buffer
	map <leader>bd :Bclose<cr>
	
	" Close all buffers
	map <leader>ba :1,1000 bd!<cr>
    map <leader>bn :bNext<cr>
    map <leader>bp :bPre<cr>

Useful mappings for managing tabs:
	
	map <leader>tn :tabnew<cr>
	map <leader>to :tabonly<cr>
	map <leader>tc :tabclose<cr>
	map <leader>tm :tabmove 
	
	" Opens a new tab with the current buffer's path
	" Super useful when editing files in the same directory
	map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
	
Switch [CWD](http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file) to the directory of the open buffer:
	
	map <leader>cd :cd %:p:h<cr>:pwd<cr>
	

Quickly open a buffer for scripbble:
	
	map <leader>q :e ~/buffer<cr>

Quickly open a buffer for markdown	
    
    map <leader>x :e ~/buffer.md<cr>


### Visual mode mappings


Surround the visual selection in parenthesis/brackets/etc.:

    vnoremap $1 <esc>`>a)<esc>`<i(<esc>
    vnoremap $2 <esc>`>a]<esc>`<i[<esc>
    vnoremap $3 <esc>`>a}<esc>`<i{<esc>
    vnoremap $$ <esc>`>a"<esc>`<i"<esc>
    vnoremap $q <esc>`>a'<esc>`<i'<esc>
    vnoremap $e <esc>`>a"<esc>`<i"<esc>


### Insert mode mappings

Quickly insert parenthesis/brackets/etc.:

    inoremap $1 ()<esc>i
    inoremap $2 []<esc>i
    inoremap $3 {}<esc>i
    inoremap $4 {<esc>o}<esc>O
    inoremap $q ''<esc>i
    inoremap $e ""<esc>i
    inoremap $t <><esc>i

Insert the current date and time (useful for timestamps):

    iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>


### Command line mappings

$q is super useful when browsing on the command line. It deletes everything until the last slash:

    cno $q <C-\>eDeleteTillSlash()<cr>

Bash like keys for the command line:

    cnoremap <C-A>		<Home>
    cnoremap <C-E>		<End>
    cnoremap <C-K>		<C-U>

    cnoremap <C-P> <Up>
    cnoremap <C-N> <Down>

Write the file as sudo (works only on Unix). Super useful when you open a file and you don't have permissions to save your changes. [Vim tip](http://vim.wikia.com/wiki/Su-write):

    :W 




### Cope
Query `:help cope` if you are unsure what cope is. It's super useful!

When you search with `Ack.vim`, display your results in cope by doing:
`<leader>cc`

To go to the next search result do:
`<leader>n`

To go to the previous search results do:
`<leader>p`

Cope mappings:

    map <leader>cc :botright cope<cr>
    map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
    map <leader>n :cn<cr>
    map <leader>p :cp<cr>


## How to uninstall
Just do following:
* Remove `~/.vim_runtime`
* Remove any lines that reference `.vim_runtime` in your `~/.vimrc`
