Innovation Tracker
==================

Rails app to make it easier to categorize how a business fits into the 10 types of innovation.


##Workspace Setup
**TODO**: Linux setup instructions

Windows:
###Getting ruby, rubygems and rails
1. This uses [Ruby 1.9.3](http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-1.9.3-p545.exe?direct)
2. Download [DevKit](https://github.com/downloads/oneclick/rubyinstaller/DevKit-tdm-32-4.5.2-20111229-1559-sfx.exe)
3. Extract the DevKit download (ex, `C:\DevKit`)
4. Open a terminal and `cd` to where you just extracted DevKit
5. Execute the following commands:
    - `ruby dk.rb init`
    - `ruby dk.rb install`
    - `gem install rails`

###Getting node, npm, bower
This uses [bower](http://bower.io/) for JavaScript and CSS package management, which is a node package.

1. Install node, download the proper installer: http://nodejs.org/download/
2. **TODO**: are there any extra steps to make npm available on Windows?
3. Install bower: `npm install -g bower`
4. Bower uses git to fetch the packages, so you need to either run its commands through git bash, or [install git correctly](https://www.npmjs.org/package/bower#windows-users)


###Running
1. `cd` to the project root
2. `bower install` will get the latest JS/CSS packages listed under `dependencies` in `bower.json`
3. **TODO** are new ruby gems added automatically?
4. `rake db:migrate` will update the database
    - Use `rake db:reset` to also re-seed the database
5. `rails server` starts the server at http://localhost:3000/

###Misc
- Search bower packages [here](http://bower.io/search/).
- Add new bower packages either directly to `bower.json` or with `bower install -S <package name>`