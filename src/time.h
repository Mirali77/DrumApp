#ifndef TIME_H
#define TIME_H
#include <QTime>
#include <QAbstractListModel>

class Time : public QAbstractListModel {
    Q_OBJECT
public:
    explicit Time(QObject *parent = nullptr);

    enum TimeRoles {
        startRole = Qt::UserRole + 1
    };

    virtual int rowCount(const QModelIndex&) const { return 1; }
    virtual QVariant data(const QModelIndex &index, int role) const;
    QHash<int, QByteArray> roleNames() const;

    Q_INVOKABLE void startTimer() { start = QTime::currentTime(); }
    Q_INVOKABLE int curTime() { return start.elapsed(); }
private:
    QTime start = QTime::currentTime();
};

#endif // TIME_H
