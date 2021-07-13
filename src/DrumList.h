#ifndef DRUMLIST_H
#define DRUMLIST_H

#include <QAbstractListModel>
#include <QList>
#include "Drum.h"

class DrumList : public QAbstractListModel {
    Q_OBJECT
public:
    explicit DrumList(QObject *parent = nullptr);

    enum DrumRoles {
        DrumRole = Qt::UserRole + 1,
        TimeRole
    };

    virtual int rowCount(const QModelIndex&) const { return m_drums.size(); }
    virtual QVariant data(const QModelIndex &index, int role) const;
    QHash<int, QByteArray> roleNames() const;

    Q_INVOKABLE void addDrum(QString drum, int time);
private:
    QList<Drum> m_drums;
};

#endif // DRUMLIST_H
