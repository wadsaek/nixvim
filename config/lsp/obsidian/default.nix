{
  plugins.obsidian = {
    enable =true;
    settings = {
      new_notes_location = "current_dir";
      completion = {
        nvim-cmp = true;
      };
      workspaces = [
        {
          name = "main";
          path = "~/Documents/writing/obsidian/";
        }
      ];
      attachments = {
        confirm_img_paste = false;
      };
    };
  };
}
