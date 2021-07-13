#include "time.h"
#include <QVariant>
#include <QDebug>

Time::Time(QObject* parent) : QAbstractListModel(parent), start() {}

QHash<int, QByteArray> Time::roleNames() const {
    QHash<int, QByteArray> roles;
    roles[startRole] = 0;
    return roles;
}

QVariant Time::data(const QModelIndex &index, int role) const {
    if(!index.isValid())
        return QVariant();
    switch(role) {
    case startRole:
        return QVariant(start);
    default:
        return QVariant();
    }
}
