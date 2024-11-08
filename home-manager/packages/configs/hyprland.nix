{
	wayland.windowManager.hyprland = {
		enable = true;
		xwayland.enable = true;
		
		settings = {
			general = {
				gaps_in = 1;
				gaps_out = 1;
			};

			monitor = ",3840x2160@60,auto,1.5";
			
			env = [
				"XDG_CURRENT_DESKTOP,Hyprland"
				"XDG_SESSION_TYPE,wayland"
				"XDG_SESSION_DESKTOP,Hyprland"
				"QT_QPA_PLATFORM,wayland"
				"WLR_NO_HARDWARE_CURSORS,1"
				"HYPRCURSOR_THEME,macOS"
				"HYPRCURSOR_SIZE,24"
			];
			
			debug = {
				disable_logs = false;
				enable_stdout_logs = true;
			};
			
			input = {
				kb_layout = "us";
				follow_mouse = true;
				sensitivity = 0;
				natural_scroll = true;
                kb_options = "caps:swapescape";
			};

			"$mainMod" = "SUPER";
			bind = [
				# manage hyprland
				"$mainMod, M, exit,"
				"$mainMod, Q, killactive"
				
				# manage laptop shortcuts
				"$mainMod, F8, exec, brightnessctl set 5%-"
				"$mainMod, F9, exec, brightnessctl set 5%+"
                "$mainMod, F12, exec, grim -g \"$(slurp -d)\""
				
				# desktop apps 
				"$mainMod, Return, exec, foot"
				"$mainMod, B, exec, firefox"
				#"$mainMod, G, exec, steam"
				#"$mainMod, P, exec, geeqie"
				"$mainMod, C, exec, code --ozone-platform=wayland"
					
				# window rules
				"$mainMod, F, toggleFloating,"
				"$mainMod, mouse:272, moveWindow"

				# workspaces
				"$mainMod, 1, workspace, 1"
				"$mainMod, 2, workspace, 2"
				"$mainMod, 3, workspace, 3"
				"$mainMod, 4, workspace, 4"
				"$mainMod, 5, workspace, 5"

				# "Drag widnow to workspace"
				"$mainMod SHIFT, 1, movetoworkspace, 1"
				"$mainMod SHIFT, 2, movetoworkspace, 2"
				"$mainMod SHIFT, 3, movetoworkspace, 3"
				"$mainMod SHIFT, 4, movetoworkspace, 4"
				"$mainMod SHIFT, 5, movetoworkspace, 5"
				
				# cli tools
				#"$mainMod, S, exec, grimblast --notify copy output"	
			];

			bindm = [
				"$mainMod, mouse:272, movewindow"
				"$mainMod, mouse:273, resizewindow"
			];

			decoration = {
				rounding = 0;
				blur = { 
					enabled = false; 
					new_optimizations = true;
				};
				
			};

			windowrulev2 = [
				"opacity 0.95 0.95,initialTitle:^(Visual Studio Code)$,"
			];	

			exec-once = [
				"waybar"
			];
		};
	};
}

