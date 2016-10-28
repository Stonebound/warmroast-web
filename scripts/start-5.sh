#!/bin/bash
jrepath=/usr/lib/jvm/java-8-oracle
mcppath=/home/minecraft/tools/profiler/conf1710
jvmpid=`ps -ef | grep server5/KCauldron | grep -v grep | awk '{print $2}'`

cd /home/minecraft/tools/profiler
screen -dmS warmroast-5 java -Djava.library.path=$jrepath/jre/bin -cp $jrepath/lib/tools.jar:warmroast-1.0.1-SNAPSHOT.jar com.sk89q.warmroast.WarmRoast --thread "Server thread" --mappings $mcppath --pid $jvmpid
