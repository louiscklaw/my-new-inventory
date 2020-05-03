# README.md

### to build (for local development)
```
$ dev.sh
```

### to publish (expecting running by travis)
```
$ publish.sh
```

### to spin me up
'''
$ mkdir my-inventory
$ git clone git@github.com:louiscklaw/my-new-inventory.git
$ mkdir gh-pages
$ cd my-new-inventory
$ git checkout --orphan gh-pages
$ git worktree add ../gh-pages gh-pages
'''

### references
- https://www.bruttin.com/2017/12/22/github-ghpages-worktree.html
