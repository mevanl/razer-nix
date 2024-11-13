{ config, lib, ... }:
{
    programs.nixvim = {
        globals = { mapleader = " "; maplocalleader = " "; };

	keymaps = [
	    {
	        mode = "n";
		key = "<leader>pv";
		action = "<cmd>Ex<Enter>";
	    }
	];
    };
}

