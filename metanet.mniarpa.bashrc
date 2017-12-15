#
# Preconfigured environment for MetaNet IARPA account
#
umask 0002

MNDEVDIR=/u/metanet/devbuild/release.005/dist
TOOLS32DIR=/u/metanet/tools
TOOLS64DIR=/u/metanet/tools64
LOCAL32DIR=/usr/local
LOCAL64DIR=/usr/local64
LIB64DIR=lib64
LIBDIR=lib
ARCH=`uname -p`
if [ "$ARCH" == "x86_64" ]; then
    TOOLSDIR=$TOOLS64DIR
    LOCALDIR=$LOCAL64DIR
    LIBDIR=$LIB64DIR
else
    TOOLSDIR=$TOOLS32DIR
    LOCALDIR=$LOCAL32DIR
    LIBDIR=$LIB32DIR
fi

# set environment variables
export ANT_HOME=$TOOLSDIR/apache-ant-1.8.4
export FREELING_HOME=$TOOLSDIR/freeling-3.1

export PATH=${MNDEVDIR}/bin:${FREELING_HOME}/bin:${TOOLSDIR}/bin:${PATH}
export LD_LIBRARY_PATH=${TOOLSDIR}/mysql/lib:/lib:/usr/lib:${FREELING_HOME}/lib:${TOOLSDIR}/lib:${TOOLSDIR}/virtualenv/2.7.3/lib/python2.7/site-packages
export PKG_CONFIG_PATH=${TOOLSDIR}/lib/pkgconfig:${LOCALDIR}/lib/pkgconfig
#export FREELINGSHARE=${TOOLS32DIR}/share/freeling
export FREELINGSHARE=${FREELING_HOME}/share/freeling
export NLTK_DATA=/u/framenet/lib/nltk_data
export TREETAGGER_HOME=/u/metanet/nlptools/tree-tagger-3.2
export MALTPARSERHOME=/u/metanet/nlptools/maltparser-1.8/maltparser-1.8.jar

export CFLAGS=-I${TOOLSDIR}/include
export LDFLAGS=-L${TOOLSDIR}/lib

export CATALINA_HOME=$TOOLSDIR/apache-tomcat-7.0.47
export CATALINA_BASE=/n/picnic/xw/metanet/data/apache-tomcat-7.0.47-$HOST

# enable metanet default python settings
source $TOOLSDIR/virtualenv/2.7.3/bin/activate

export PYTHONPATH=${MNDEVDIR}/lib/python:${PYTHONPATH}
export PROTEGE_HOME=${TOOLSDIR}/protege

export PERL5OPT="-I${TOOLSDIR}/lib/perl/${LIBDIR}/perl5 -I${TOOLSDIR}/lib/perl/${LIBDIR}/perl5/site_perl"
export PERL5LIB=${TOOLSDIR}/lib/perl:${TOOLSDIR}/lib/perl/share/perl5:${TOOLSDIR}/lib/perl/${LIBDIR}/perl5:${TOOLSDIR}/lib/perl/${LIB32DIR}/perl5
export SLURM_PARTITION=ai

# freeze for evals - dec 2014
export MNRDFPATH=/u/metanet/IARPATesting/freeze.dec2014/rdf
export MNEXTRACTPATH=/u/metanet/IARPATesting/freeze.dec2014/extraction
#export PROGSOURCEPATH=/u/metanet/IARPATesting/freeze/program
#export MNAFFECTDIR=/u/metanet/IARPATesting/freeze/affectRatings

# mniarpa configuration
export MNSYSTEM_CONF=/u/metanet/etc/mnsystem.mniarpa.conf
