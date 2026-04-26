# macOSでブルーアーカイブを稼働する手順

(English follows)

1. `install-deps.sh`で必要な依存パッケージをインストール
   - 一部のインストーラーが取り下げられたため、Releasesから手動でダウンロードしてインストールしてください
   - 手動でインストールする場合、スクリプトの内容を確認し、インストールの部分のみ実行してください
3. `setup.sh`でWine環境を準備
4. `install-launcher.sh`でゲームのランチャーをインストール
5. `run-launcher.sh`でランチャーを起動し、初期データをダウンロード
6. `run-game.sh`でゲームを起動

---

# Running Blue Archive on macOS

1. Install required dependencies with `install-deps.sh`
   - Installers that are no longer available can be downloaded from Releases
   - When installing manually, check and run the install portions of the script
3. Prepare the Wine prefix with `setup.sh`
4. Install the game launcher with `install-launcher.sh`
5. Run the launcher with `run-launcher.sh` to download the initial game data
6. Start the game with `run-game.sh`
