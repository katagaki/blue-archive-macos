export PATH="/Applications/Wine Stable.app/Contents/Resources/wine/bin:$PATH"
export WINEINSTALL="/Applications/Wine Stable.app/Contents/Resources/wine"
export WINEPREFIX="$HOME/.kivotos"
export WINEARCH=win64

# Mac の依存パッケージをインストール
brew install gnutls winetricks

# Wine 用の GStreamer をインストール
GSTREAMER_VERSION="1.29.1"
curl -LO "https://gstreamer.freedesktop.org/data/pkg/osx/${GSTREAMER_VERSION}/gstreamer-1.0-${GSTREAMER_VERSION}-universal.pkg"
open "gstreamer-1.0-${GSTREAMER_VERSION}-universal.pkg"
echo "「システム設定」アプリ > 「プライバシーとセキュリティ」 > 「このまま開く」でインストーラーを開いてください。"
read -n 1 -s -r -p "GStreamer をインストール後、任意のキーを押してください。"
echo 

# Wine をインストール
WINE_VERSION="11.0"
WINE_BRANCH="stable"
curl -LO "https://github.com/Gcenx/macOS_Wine_builds/releases/download/${WINE_VERSION}/wine-${WINE_BRANCH}-${WINE_VERSION}-osx64.tar.xz"
tar -xf "wine-${WINE_BRANCH}-${WINE_VERSION}-osx64.tar.xz"
mv "Wine Stable.app" /Applications/
echo "「システム設定」アプリ > 「プライバシーとセキュリティ」 > 「このまま開く」で Wine Staging.app アプリを開いてください。"
open "/Applications/Wine Stable.app"
read -n 1 -s -r -p "Wine Stable.app を開いた後、任意のキーを押してください。"
echo 
