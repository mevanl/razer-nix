{ pkgs, ...}:
{
	home.pointerCursor = {
		gtk.enable = true;

		#package = pkgs.catppuccin-cursors.frappeDark;
		#name = "catppuccin-frappe-dark-cursors";
		package = pkgs.apple-cursor;
		name = "macOS";
			
		size = 24;
	};
}
