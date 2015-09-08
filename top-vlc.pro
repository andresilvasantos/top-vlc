TEMPLATE = lib
CONFIG += plugin staticlib
QT += qml quick

TARGET  = top_vlc

macx {
    CONFIG += c++11
}

ROOT_DIR = ../..

CONFIG(debug, debug|release): DESTDIR = $${ROOT_DIR}/Output/debug
CONFIG(release, debug|release): DESTDIR = $${ROOT_DIR}/Output/release

HEADERS += \
    QmlVlc.h \
    QmlVlcConfig.h \
    QmlVlcAudio.h \
    QmlVlcDeinterlace.h \
    QmlVlcInput.h \
    QmlVlcLogo.h \
    QmlVlcMarquee.h \
    QmlVlcMedia.h \
    QmlVlcPlayerProxy.h \
    QmlVlcSurfacePlayerProxy.h \
    QmlVlcPlayer.h \
    QmlVlcPlaylist.h \
    QmlVlcPositions.h \
    QmlVlcSubtitle.h \
    QmlVlcVideo.h \
    QmlVlcVideoFrame.h \
    QmlVlcVideoOutput.h \
    QmlVlcGenericVideoSurface.h \
    QmlVlcVideoSurface.h \
    SGVlcVideoNode.h

SOURCES += \
    QmlVlc.cpp \
    QmlVlcConfig.cpp \
    QmlVlcAudio.cpp \
    QmlVlcDeinterlace.cpp \
    QmlVlcInput.cpp \
    QmlVlcLogo.cpp \
    QmlVlcMarquee.cpp \
    QmlVlcMedia.cpp \
    QmlVlcPlayerProxy.cpp \
    QmlVlcSurfacePlayerProxy.cpp \
    QmlVlcPlayer.cpp \
    QmlVlcPlaylist.cpp \
    QmlVlcPositions.cpp \
    QmlVlcSubtitle.cpp \
    QmlVlcVideo.cpp \
    QmlVlcVideoFrame.cpp \
    QmlVlcVideoOutput.cpp \
    QmlVlcGenericVideoSurface.cpp \
    QmlVlcVideoSurface.cpp \
    SGVlcVideoNode.cpp

contains( QT, multimedia ) {
    DEFINES += QMLVLC_QTMULTIMEDIA_ENABLE

    HEADERS += \
        QmlVlcMmVideoOutput.h \
        QmlVlcMmPlayer.h

    SOURCES += \
        QmlVlcMmVideoOutput.cpp \
        QmlVlcMmPlayer.cpp
}

include(libvlc_wrapper/libvlc_wrapper.pri)

INCLUDEPATH += "../../OtherLibs/VLC/include"
