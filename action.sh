branch=Py-Tgcalls
git clone -b $branch https://github.com/TeamDaisyX/DaisyXMusic
cp DaisyXMusic/example.env /root/TeamDaisyX/local.env
cd /root/DaisyXMusic
docker build . --rm --force-rm --compress --pull --file Dockerfile -t DaisyXMusic
docker run --privileged --env-file local.env --rm -i DaisyXMusic
