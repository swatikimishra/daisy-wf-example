branch=Py-Tgcalls
git clone -b $branch https://github.com/TeamDaisyX/DaisyXMusic
cp root/example.env /root/local.env
cd /root/
docker build . --rm --force-rm --compress --pull --file Dockerfile -t DaisyXMusic
docker run --privileged --env-file local.env --rm -i DaisyXMusic
