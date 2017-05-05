vagrant box remove djangocon/base

vagrant destroy -f && vagrant up && vagrant package

vagrant box add --name djangocon/base package.box

move /Y package.box c:\DjangoCon\base.box