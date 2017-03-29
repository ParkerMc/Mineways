TEMPLATE = app
TARGET = mineways
DEPENDPATH += .
INCLUDEPATH += .
CONFIG += c++11
QT += widgets network
QMAKE_INFO_PLIST = mineways.plist
unix:LIBS += -lz
win32:RC_FILE += winicon.rc
macx:ICON=icon.icns

#for profiling
#*-g++* {
#	QMAKE_CXXFLAGS += -pg
#	QMAKE_LFLAGS += -pg
#}

# Input
#TO-DO only compile what is need
HEADERS += \
    minutor/zlib/zlib.h \
    minutor/zlib/zconf.h \
	minutor/labelledslider.h \
    minutor/biomeidentifier.h \
    minutor/blockidentifier.h \
    minutor/chunk.h \
    minutor/chunkcache.h \
    minutor/chunkloader.h \
    minutor/definitionmanager.h \
    minutor/definitionupdater.h \
    minutor/dimensionidentifier.h \
    minutor/entity.h \
    minutor/entityidentifier.h \
    minutor/generatedstructure.h \
    minutor/json.h \
    minutor/mapview.h \
    minutor/minutor.h \
    minutor/nbt.h \
    minutor/overlayitem.h \
    minutor/properties.h \
    minutor/settings.h \
    minutor/village.h \
    minutor/worldsave.h \
    minutor/zipreader.h \
    minutor/clamp.h \
    labelledslidertwo.h
SOURCES += \
	  minutor/labelledslider.cpp \
    minutor/biomeidentifier.cpp \
    minutor/blockidentifier.cpp \
    minutor/chunk.cpp \
    minutor/chunkcache.cpp \
    minutor/chunkloader.cpp \
    minutor/definitionmanager.cpp \
    minutor/definitionupdater.cpp \
    minutor/dimensionidentifier.cpp \
    minutor/entity.cpp \
    minutor/entityidentifier.cpp \
    minutor/generatedstructure.cpp \
    minutor/json.cpp \
    minutor/mapview.cpp \
    minutor/minutor.cpp \
    minutor/nbt.cpp \
    minutor/properties.cpp \
    minutor/settings.cpp \
    minutor/village.cpp \
    minutor/worldsave.cpp \
    minutor/zipreader.cpp \
    main.cpp \
    labelledslidertwo.cpp
RESOURCES = minutor/minutor.qrc

win32:SOURCES += minutor/zlib/adler32.c \
		minutor/zlib/compress.c \
		minutor/zlib/crc32.c \
		minutor/zlib/deflate.c \
		minutor/zlib/gzclose.c \
		minutor/zlib/gzlib.c \
		minutor/zlib/gzread.c \
		minutor/zlib/gzwrite.c \
		minutor/zlib/infback.c \
		minutor/zlib/inffast.c \
		minutor/zlib/inflate.c \
		minutor/zlib/inftrees.c \
		minutor/zlib/trees.c \
		minutor/zlib/uncompr.c \
		minutor/zlib/zutil.c

#TO-DO add install stuff here
#desktopfile.path = /usr/share/applications
#desktopfile.files = minutor.desktop
#pixmapfile.path = /usr/share/pixmaps
#pixmapfile.files = minutor.png minutor.xpm
#target.path = /usr/bin
#INSTALLS += desktopfile pixmapfile target

FORMS += \
    minutor/properties.ui \
    minutor/settings.ui
