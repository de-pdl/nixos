{profile, ...}: {
  time.timeZone = profile.timeZone;
  i18n.defaultLocale = profile.defaultLocale;
  i18n.extraLocaleSettings = with profile; {
    LC_ADDRESS = extraLocaleSettings;
    LC_IDENTIFICATION = extraLocaleSettings;
    LC_MEASUREMENT = extraLocaleSettings;
    LC_MONETARY = extraLocaleSettings;
    LC_NAME = extraLocaleSettings;
    LC_NUMERIC = extraLocaleSettings;
    LC_PAPER = extraLocaleSettings;
    LC_TELEPHONE = extraLocaleSettings;
    LC_TIME = extraLocaleSettings;
  };
}
