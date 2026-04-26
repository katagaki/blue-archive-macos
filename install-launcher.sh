export PATH="/Applications/Wine Stable.app/Contents/Resources:$PATH"
export WINEPREFIX="$HOME/.kivotos"

# インストーラーを実行
curl -LO https://launcher-pkg-ba-jp.yo-star.com/install_pkg/game_launcher/BlueArchive_JP/BlueArchive_JP_Gamelauncher-1.7.2-setup.exe
wine BlueArchive_JP_Gamelauncher-1.7.2-setup.exe