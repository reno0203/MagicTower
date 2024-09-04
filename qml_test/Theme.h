#ifndef THEME_H
#define THEME_H

#include <QObject>
#include <QtQmlIntegration>
#include <Singleton.h>
#include <QQmlEngine>
#include <QJSEngine>

/**
 * 系统主题
 */
class Theme : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    QML_SINGLETON
    Q_PROPERTY(int type MEMBER _type NOTIFY typeChanged)

public:
    void setType(int type);
    int getType() const;

    SINGLETON(Theme)

    static Theme* create(QQmlEngine* qmlEngine, QJSEngine* jsEngine) {
        return getInstance();
    }

private:
    explicit Theme(QObject *parent = nullptr);

    int _type;

signals:
    void typeChanged();
};

#endif // THEME_H
