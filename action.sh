branch=main
git clone -b $branch https://github.com/TeamDaisyX/DaisyXMusic
cp DaisyXMusic/.env /root/TeamDaisyX/.env
cd /root/DaisyXMusic
docker build . --rm --force-rm --compress --pull --file Dockerfile -t DaisyXMusic
docker run --privileged --env-file .env --rm -i DaisyXMusic
