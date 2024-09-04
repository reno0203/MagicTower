#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <Theme.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterSingletonType<Theme>("MagicTower", 1, 0, "Theme",
                                   [](QQmlEngine *engine, QJSEngine *scriptEngine) -> QObject* {
                                       Q_UNUSED(scriptEngine)
                                       QObject *instance = Theme::getInstance();
                                       engine->setObjectOwnership(instance, QQmlEngine::CppOwnership);
                                       return instance;
                                   });

    QObject::connect(&engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        [](){QCoreApplication::exit(-1);},
        Qt::QueuedConnection);
    engine.loadFromModule("qml_test", "Main");

    return app.exec();
}
