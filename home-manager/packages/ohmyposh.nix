{
  programs.oh-my-posh = {
    enable = true; 
    enableBashIntegration = true; 

    settings = {
      version = 2; 
      final_space = true; 
      console_title_template = "{{.Shell}} in {{.Folder}}";

      palette = {
        pine = "#31748f";
        foam = "#9ccfd8";
        love = "#eb6f92";
        subtle = "#908caa";
      };

      blocks = [
        # Block One - Path and Git
        {
          type = "prompt";
          alignment = "left";
          segments = [
            # Path Segment
            {
              type = "path";
              style = "plain";
              background = "transparent";
              foreground = "p:pine";
              template = "{{.Path}}";
              properties = {
                style = "full";
              };
            }
            # Git Segment
            {
              type = "git";
              alignment = "left"; 
              background = "transparent";
              foreground = "p:sutble";
              template = " {{ .HEAD }}{{if or (.Working.Changed) (.Staging.Changed)}}*{{end}}";
              properties = {
                branch_icon = " ";
                commit_icon = "@";
                fetch_status = true;
              };
            }
          ]; 
        }
        # Block Two - Prompt
        {
          type = "prompt";
          alignment = "left";
          newline = true;
          segments = [
            # 
            {
              type = "text";
              style = "plain";
              background = "transparent";

              foreground_templates = [
                "{{if gt .Code 0}}p:love{{end}}"
                "{{if eq .Code 0}}p:foam{{end}}"
              ];
              template = "{{if .Env.VIRTUAL_ENV}}(venv) {{end}}{{if .Env.IN_NIX_SHELL}}nix-shell$ {{else}}{{.UserName}}$ {{end}}";
            }
          ];
        }
      ];
    };
  };
}