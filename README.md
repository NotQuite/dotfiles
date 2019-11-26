# dotfiles

## Virtual setup
`Vagrantfile` can be used to create a ubuntu server box with docker
and dotfiles bootstrapped. 

```
cd ..
cp dotfiles\Vagrantfile .
vagrant up

vagrant ssh-config  --host octopi > octopi.config
ssh -tt -F octopi.config octopi
```

## Direct setup

```
sudo bash ./install-usefull-packages.sh
bash ./dotfiles-bootstrap.sh
```
