{
  opts = {
    number = true;
    relativenumber = true;

    shiftwidth = 4;
    expandtab = true;
    softtabstop = 4;

    cul = true;
    colorcolumn = "80";

    hlsearch = false;
    incsearch = true;

    scrolloff = 8;

    backup = false;
    swapfile = false;
    undodir.__raw = ''os.getenv("HOME") .. "/.cache/undodir"'';
    undofile = true;

    list = true;
    listchars = "tab:>-,trail:·,extends:◣,precedes:◢";

    winborder = "rounded";
  };
  globals = {
    mapleader = " ";
  };
}
