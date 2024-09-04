#include "Theme.h"
#include <QDebug>

Theme::Theme(QObject *parent)
    : QObject{parent}
{
    connect(this, &Theme::typeChanged, [=]()
    {
       qDebug() << "typeChanged" << _type;
    });
}

void Theme::setType(const int type)
{
    _type = type;
}

int Theme::getType() const
{
    return _type;
}
