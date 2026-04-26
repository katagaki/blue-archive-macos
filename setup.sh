export PATH="/Applications/Wine Stable.app/Contents/Resources/wine/bin:$PATH"
export WINEINSTALL="/Applications/Wine Stable.app/Contents/Resources/wine"
export WINEPREFIX="$HOME/.kivotos"
export WINEARCH=win64

# Wine 環境を初期化
wineboot -i && wineserver -w

# DXMT をインストール
DXMT_VERSION="v0.71"
curl -LO "https://github.com/3Shain/dxmt/releases/download/${DXMT_VERSION}/dxmt-${DXMT_VERSION}-builtin.tar.gz"
tar -xf "dxmt-${DXMT_VERSION}-builtin.tar.gz"
cd "${DXMT_VERSION}"
cp -p ./x86_64-unix/winemetal.so "$WINEINSTALL/lib/wine/x86_64-unix/winemetal.so"
cp -p ./x86_64-windows/winemetal.dll "$WINEINSTALL/lib/wine/x86_64-windows/winemetal.dll"
cp -p ./x86_64-windows/winemetal.dll "$WINEPREFIX/drive_c/windows/system32/winemetal.dll"
cp -p ./x86_64-windows/d3d11.dll "$WINEINSTALL/lib/wine/x86_64-windows/d3d11.dll"
cp -p ./x86_64-windows/dxgi.dll "$WINEINSTALL/lib/wine/x86_64-windows/dxgi.dll"
cp -p ./x86_64-windows/d3d10core.dll "$WINEINSTALL/lib/wine/x86_64-windows/d3d10core.dll"
cp -p ./i386-windows/* "$WINEINSTALL/lib/wine/i386-windows"
cd ..
rm -rf "${DXMT_VERSION}"
wineboot
