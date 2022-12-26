#ifndef QMLINTERACTOR_H
#define QMLINTERACTOR_H

#include <QObject>

class QmlInteractor : public QObject
{
    Q_OBJECT
//public:
//    explicit QmlInteractor(QObject *parent = nullptr);

signals:

public:
    QmlInteractor();

public slots: // slots are public methods available in QML
    void shutdown();

};

#endif // QMLINTERACTOR_H
