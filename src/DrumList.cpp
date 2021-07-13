#include "DrumList.h"
#include <QVariant>
#include <QDebug>
#include <algorithm>

DrumList::DrumList(QObject* parent) : QAbstractListModel(parent), m_drums() {}

QHash<int, QByteArray> DrumList::roleNames() const {
    QHash<int, QByteArray> roles;
    roles[DrumRole] = "kick";
    roles[TimeRole] = 0;
    return roles;
}

QVariant DrumList::data(const QModelIndex &index, int role) const {
    if(!index.isValid())
        return QVariant();
    switch(role) {
    case DrumRole:
        return QVariant(m_drums[index.row()].drum);
    case TimeRole:
        return QVariant(m_drums[index.row()].time);
    default:
        return QVariant();
    }
}

Q_INVOKABLE void DrumList::addDrum(QString drum, int time) {
    auto notesSize = m_drums.size();
    beginInsertRows(QModelIndex(), notesSize, notesSize);
    m_drums.append(Drum(drum, time));
    endInsertRows();
}
