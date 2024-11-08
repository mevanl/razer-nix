{
  programs.firefox = {
    enable = true;

    profiles.evan = {
        isDefault = true;
        name = "evan";
        id = 0;
        bookmarks = [
          {
            name = "MyNixOS";
            url = "https://mynixos.com/";
          }
          {
            name = "Bar";
            toolbar = true;
            bookmarks = [
              {
                name = "GitHub/Image-Training";
                url = "https://github.com/mevanl/dice-image-training";
              }
              {
                name = "TechExpress";
                url = "https://express.tntech.edu/index.php";
              }
              {
                name = "Discord";
                url = "https://discord.com/channels/@me";
              }
            ];
          }
        ];

        settings = {
          "browser.theme.content-theme" = 0; # this doesnt work for some reason?
        };

        # Ill do extensions later, however I need to add the NixUser Repo to get them
      };

    policies = {
      HardwareAcceleration = true;
      HomePage = {
        URL = "https://www.google.com/";
        StartPage = "home-page";
      };
      DisablePocket = true;
      DisableFirefoxAccounts = true;
      FirefoxHome = {
        Search = true;
        TopSites = false;
        SponsoredTopSites = false;
        Highlights = false;
        Pocket = false;
        SponsoredPocket = false;
        Snippets = false;
        Locked = true;
      };

      DisableTelemetry = true;
      DisableFirefoxStudies = true; 
      EnableTrackingProtection = {
        Value = true;
        Locked = true;
        Cryptomining = true;
        Fingerprinting = true;
        EmailTracking = true; 
      };
    };
  };
}