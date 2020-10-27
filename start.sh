#!/bin/bash
/configpg.sh
/configgwm.sh
/etc/init.d/gvmd stop
/etc/init.d/gvmd start --verbose