#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "qmlinteractor.h"
#include <QQmlContext>
//#include <QMqttClient>


int main(int argc, char *argv[])
{
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

    QGuiApplication app(argc, argv);



    QQmlApplicationEngine engine;




    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    QmlInteractor* qml = new QmlInteractor();
    engine.rootContext()->setContextProperty("qmlInteractor", qml);

    engine.load(url);

    return app.exec();
}
