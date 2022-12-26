#include "qmlinteractor.h"
#include <QGuiApplication>

QmlInteractor::QmlInteractor()
{
 // perform custom initialization steps here
}

void QmlInteractor::shutdown()
{
    QCoreApplication::exit(0);
}
