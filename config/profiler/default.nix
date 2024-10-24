{ pkgs, lib, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "my-plugin";
      src = pkgs.fetchFromGitHub {
        owner = "stevearc";
        repo = "profile.nvim";
        rev = "0ee32b7aba31d84b0ca76aaff2ffcb11f8f5449f";
        hash = "sha256-usyy1kST8hq/3j0sp7Tpf/1mld6RtcVABPo/ygeqzbU=";
      };
    })
  ];
  extraConfigLuaPre = ''
    local should_profile = os.getenv("NVIM_PROFILE")
    if should_profile then
      require("profile").instrument_autocmds()
        if should_profile:lower():match("^start") then
            require("profile").start("*")
        else
            require("profile").instrument("*")
        end
    end

    local function toggle_profile()
        local prof = require("profile")
        if prof.is_recording() then
            prof.stop()
            vim.ui.input({ prompt = "Save profile to:", completion = "file", default = "profile.json" }, function(filename)
                if filename then
                    prof.export(filename)
                    vim.notify(string.format("Wrote %s", filename))
                end
            end)
        else
          prof.start("*")
        end
    end
    vim.keymap.set("", "<f1>", toggle_profile)
  '';
  #this is waht haoenbds when u edut stuff
}
