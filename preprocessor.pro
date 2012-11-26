include(../wsnsim.pri)

TEMPLATE = app
QT += gui
CONFIG += console
INCLUDEPATH += . ../libs/projectData ../libs/moduleData
DEPENDPATH += . model tools ui view widgets/modulesInfo widgets/paramsInfo widgets
INCLUDEPATH += . view widgets/modulesInfo tools ui model widgets/paramsInfo widgets

# Input
HEADERS += model/modulesStorage.h \
           model/projectStorage.h \
           tools/moduleScanner.h \
           tools/projectScanner.h \
           view/mainwindow.h \
           view/modulesPage.h \
           view/paramsPage.h \
           view/projectInfo.h \
           view/dependenciesPage.h \
           view/simulatorParams.h \
           view/nodeTypePage.h \
           view/nodeTypesPage.h \
           widgets/checkModule.h \
           widgets/nodeTypeSpinBox.h \
           widgets/interfaceInfo.h \
           widgets/projectTree.h \
           widgets/modulesInfo/modulesInfo.h \
           widgets/paramsInfo/generalParam.h \
           widgets/paramsInfo/doubleParam.h \
           widgets/paramsInfo/intParam.h \
           widgets/paramsInfo/uintParam.h \
           widgets/paramsInfo/stringParam.h \
           widgets/paramsInfo/boolParam.h \
           widgets/paramsInfo/nodesParam.h \
           widgets/paramsInfo/timeParam.h \
           widgets/paramsInfo/fileParam.h \
           widgets/paramsInfo/tableParam.h
FORMS += view/mainwindow.ui \
         view/modulesPage.ui \
         view/paramsPage.ui \
         view/projectInfo.ui \
         view/dependenciesPage.ui \
         view/simulatorParams.ui \
         view/nodeTypePage.ui \
         view/nodeTypesPage.ui \
         widgets/paramsInfo/doubleParam.ui \
         widgets/paramsInfo/intParam.ui \
         widgets/paramsInfo/stringParam.ui \
         widgets/paramsInfo/boolParam.ui \
         widgets/paramsInfo/nodesParam.ui \
         widgets/paramsInfo/tableParam.ui \
         widgets/paramsInfo/timeParam.ui \
         widgets/paramsInfo/fileParam.ui \
         widgets/interfaceInfo.ui
SOURCES += main.cpp \
           model/modulesStorage.cpp \
           model/projectStorage.cpp \
           tools/moduleScanner.cpp \
           tools/projectScanner.cpp \
           view/mainwindow.cpp \
           view/modulesPage.cpp \
           view/dependenciesPage.cpp \
           view/paramsPage.cpp \
           view/projectInfo.cpp \
           view/simulatorParams.cpp \
           view/nodeTypePage.cpp \
           view/nodeTypesPage.cpp \
           widgets/checkModule.cpp \
           widgets/nodeTypeSpinBox.cpp \
           widgets/interfaceInfo.cpp \
           widgets/projectTree.cpp \
           widgets/modulesInfo/modulesInfo.cpp \
           widgets/paramsInfo/generalParam.cpp \
           widgets/paramsInfo/doubleParam.cpp \
           widgets/paramsInfo/intParam.cpp \
           widgets/paramsInfo/uintParam.cpp \
           widgets/paramsInfo/stringParam.cpp \
           widgets/paramsInfo/boolParam.cpp \
           widgets/paramsInfo/nodesParam.cpp \
           widgets/paramsInfo/tableParam.cpp \
           widgets/paramsInfo/timeParam.cpp \
           widgets/paramsInfo/fileParam.cpp
RESOURCES += res/preprocessor.qrc
TRANSLATIONS = res/languages/preprocessor_en.ts \
               res/languages/preprocessor_ru.ts \
               res/languages/qt_en.ts \
               res/languages/qt_ru.ts
tr.commands = lrelease $$_PRO_FILE_
QMAKE_EXTRA_TARGETS += tr
POST_TARGETDEPS += tr