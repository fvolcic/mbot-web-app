
# build mbot-home-page
cd ../../mbot-react-app
echo "Building mbot-home-page"
npm run build
cp metadata.json build/metadata.json

cd ../
rm -rf setup/packages/app-skeleton
mkdir setup/packages/app-skeleton

cd mbot-react-app/build
cp -r * ../../setup/packages/app-skeleton

echo "Building mbot-settings-page"
cd ../../
cd mbot-settings-page
npm run build
cp metadata.json build/metadata.json

cd ../
rm -rf setup/packages/settings-page
mkdir setup/packages/settings-page

cd mbot-settings-page/build
cp -r * ../../setup/packages/settings-page

echo "Building mbot-drive-and-map-package"
cd ../../
cd mbot-drive-and-map-package
npm run build
cp metadata.json build/metadata.json

cd ../
rm -rf setup/packages/drive-and-map-package
mkdir setup/packages/drive-and-map-package

cd mbot-drive-and-map-package/build
cp -r * ../../setup/packages/drive-and-map-package
