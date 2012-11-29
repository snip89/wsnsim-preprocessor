include(../wsnsim.pri)

TEMPLATE = app
TARGET = projectEditor
QT += gui
CONFIG += console
INCLUDEPATH += . ../libs/projectData ../libs/moduleData
<<<<<<< HEAD
DEPENDPATH += . model tools ui view widgets/modulesInfo widgets/paramsInfo widgets settings
INCLUDEPATH += . view widgets/modulesInfo tools ui model widgets/paramsInfo widgets settings
=======
DEPENDPATH += . model tools ui view widgets/modulesInfo widgets/params widgets widgets/modules
INCLUDEPATH += . view widgets/modulesInfo tools ui model widgets/params widgets widgets/modules
>>>>>>> simplification

# Input
HEADERS += model/modulesStorage.h \
           model/projectStorage.h \
           model/nodesStorage.h \
           tools/moduleScanner.h \
           tools/projectScanner.h \
           settings/settings.h \
           view/mainwindow.h \
           view/modulesPage.h \
           view/modulePage.h \
           view/projectpage.h \
           view/simulatorPage.h \
           view/nodeTypePage.h \
           view/nodeTypesPage.h \
           widgets/checkModule.h \
           widgets/nodeTypeSpinBox.h \
           widgets/interfaceInfo.h \
           widgets/projectTree.h \
           widgets/modulesInfo/modulesInfo.h \
           widgets/modules/paramsWidget.h \
           widgets/modules/dependenciesWidget.h \
           widgets/params/generalParam.h \
           widgets/params/doubleParam.h \
           widgets/params/intParam.h \
           widgets/params/uintParam.h \
           widgets/params/stringParam.h \
           widgets/params/boolParam.h \
           widgets/params/nodesParam.h \
           widgets/params/timeParam.h \
           widgets/params/fileParam.h \
           widgets/params/tableParam.h
FORMS += view/mainwindow.ui \
         view/modulesPage.ui \
         view/modulePage.ui \
         view/projectPage.ui \
         view/simulatorPage.ui \
         view/nodeTypePage.ui \
         view/nodeTypesPage.ui \
<<<<<<< HEAD
         settings/settings.ui \
         widgets/paramsInfo/doubleParam.ui \
         widgets/paramsInfo/intParam.ui \
         widgets/paramsInfo/stringParam.ui \
         widgets/paramsInfo/boolParam.ui \
         widgets/paramsInfo/nodesParam.ui \
         widgets/paramsInfo/tableParam.ui \
         widgets/paramsInfo/timeParam.ui \
         widgets/paramsInfo/fileParam.ui \
=======
         widgets/modules/paramsWidget.ui \
         widgets/modules/dependenciesWidget.ui \
         widgets/params/doubleParam.ui \
         widgets/params/intParam.ui \
         widgets/params/stringParam.ui \
         widgets/params/boolParam.ui \
         widgets/params/nodesParam.ui \
         widgets/params/tableParam.ui \
         widgets/params/timeParam.ui \
         widgets/params/fileParam.ui \
>>>>>>> simplification
         widgets/interfaceInfo.ui
SOURCES += main.cpp \
           model/modulesStorage.cpp \
           model/projectStorage.cpp \
           model/nodesStorage.cpp \
           tools/moduleScanner.cpp \
           tools/projectScanner.cpp \
           settings/settings.cpp \
           view/mainwindow.cpp \
           view/modulesPage.cpp \
           view/modulePage.cpp \
           view/projectPage.cpp \
           view/simulatorPage.cpp \
           view/nodeTypePage.cpp \
           view/nodeTypesPage.cpp \
           widgets/modules/paramsWidget.cpp \
           widgets/modules/dependenciesWidget.cpp \
           widgets/checkModule.cpp \
           widgets/nodeTypeSpinBox.cpp \
           widgets/interfaceInfo.cpp \
           widgets/projectTree.cpp \
           widgets/modulesInfo/modulesInfo.cpp \
           widgets/params/generalParam.cpp \
           widgets/params/doubleParam.cpp \
           widgets/params/intParam.cpp \
           widgets/params/uintParam.cpp \
           widgets/params/stringParam.cpp \
           widgets/params/boolParam.cpp \
           widgets/params/nodesParam.cpp \
           widgets/params/tableParam.cpp \
           widgets/params/timeParam.cpp \
           widgets/params/fileParam.cpp
RESOURCES += res/preprocessor.qrc
TRANSLATIONS = res/languages/preprocessor_en.ts \
               res/languages/preprocessor_ru.ts \
               res/languages/qt_en.ts \
               res/languages/qt_ru.ts
tr.commands = lrelease $$_PRO_FILE_
QMAKE_EXTRA_TARGETS += tr
POST_TARGETDEPS += tr