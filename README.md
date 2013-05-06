#Screen renderer setup
##Components
1. simple express/nodejs webserver for serving static files
2. screen.js (main file for screen rendering)
3. grunt task watcher for automatic recompile-on-file-change

##Install
1. install nodejs/npm from nodejs.org
2. go to the root of the project and run ```npm install```

##Running the server
1. open a process/terminal and type node index.js
2. optionally, to edit code/recompile open a process and run ```grunt```

##Disable the music
1. open index.html and remove ```autoplay``` attribute from audio tag
