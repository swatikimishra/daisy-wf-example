branch=Py-Tgcalls
git clone -b $branch https://github.com/TeamDaisyX/DaisyXMusic
rm DaisyXMusic/example.env
git clone https://github.com/swatikimishra/private_env
cp private_env/local.env DaisyXMusic/
cd /root/
docker build . --rm --force-rm --compress --pull --file Dockerfile -t DaisyXMusic
docker run --privileged --env-file local.env --rm -i DaisyXMusic
