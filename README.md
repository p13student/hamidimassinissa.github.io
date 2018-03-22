# Personal and Academic websites

### Description
to come...

### Branches
* `master` branch is dedicated to the [Github hosted website](http://hamidimassinissa.github.io);
* `lipn` branch is dedicated to the stuff hosted by [LIPN-Univ Paris-Nord](http://lipn.univ-paris13.fr/~hamidi);
* `posts` branch is used for writing posts. These posts can be merged to any of the main branches above and at any time (see Development flow below).

### Development flow

* Given that there is a bunch of common stuff between the differents branches enumerated above, consider using `git-cherry-pick` to apply changes introduced by some existing commits; this implies that these commits have to be self-contained in files each time it is possible. e.g. add `.gitignore` file defined in `master` branch to `lipn` branch:
```
    git checkout lipn           # make sure you're in the branch you want to apply changes to!
    git cherry-pick commit_hash # hash of the commit that adds .gitignore file
```

to come...

### Prerequesties
#### Ruby
  ```
  sudo apt-get install ruby-full
  ```
#### Bundler and Github-pages
  ```
  gem install bundler github-pages
  ```

### Serving
  ```
  jekyll serve
  ```

Based on [jekyll-now](https://github.com/barryclark/jekyll-now) static site generator.
