cask "cmd-space-launcher" do
  version "1.1.0"
  sha256 "e8b82a574a743b2d3451113dc9a2cbe8452eefec536e288b9bbe395096cd84d5"

  url "https://github.com/mo-shawa/cmd-space-launcher/releases/download/v#{version}/cmd-space-launcher-#{version}.zip"
  name "Cmd-Space Launcher"
  desc "Keyboard app switcher for macOS Spaces"
  homepage "https://github.com/mo-shawa/cmd-space-launcher"

  depends_on cask: "hammerspoon"
  depends_on :macos

  installer script: {
    executable: "install.command",
    args:       ["--homebrew"],
  }

  uninstall script: {
    executable: "install.command",
    args:       ["--uninstall"],
  }

  caveats <<~EOS
    Enable Hammerspoon in System Settings → Privacy & Security → Accessibility.
    If Raycast uses Cmd-Space, clear its hotkey or quit Raycast.
    If Hammerspoon was already running, choose Reload Config in its menu.
  EOS
end
