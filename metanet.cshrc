# c-shell configuration options for metanet
#
# environment variable settings for metanet project
#
# jhong
# 2012/06/07
#

# figure out whether the machine is 32 or 64 bits
set archtype = `uname -m`

if ( "$archtype" == "x86_64") then
        set toolsdir = "/u/metanet/tools64"
else
        set toolsdir = "/u/metanet/tools"
endif

set mndevdir = "/u/metanet/dev"

if ( ! $?PKG_COBFIG_PATH ) then
        setenv PKG_CONFIG_PATH ${toolsdir}/lib/pkgconfig
else
        setenv PKG_CONFIG_PATH ${toolsdir}/lib/pkgconfig:$PKG_CONFIG_PATH
endif

setenv PATH ${mndevdir}/bin:${toolsdir}/bin:$PATH
setenv ANT_HOME ${toolsdir}/apache-ant-1.8.4
setenv LD_LIBRARY_PATH /lib:/usr/lib:${toolsdir}/lib
setenv FREELINGSHARE ${toolsdir}/share/freeling
setenv PYTHONPATH ${mndevdir}/lib/python:${PYTHONPATH}
setenv NLTK_DATA /u/framenet/lib/nltk_data
setenv TREETAGGER_HOME /u/metanet/nlptools/tree-tagger-3.2
setenv MALTPARSERHOME /u/metanet/nlptools/maltparser-1.8/maltparser-1.8.jar

# enable metanet default python settings
source /u/metanet/tools/virtualenv/2.7.3/bin/activate.cshrc

setenv PYTHONPATH ${mndevdir}/lib/python:${PYTHONPATH}
setenv PROTEGE_HOME ${toolsdir}/protege
