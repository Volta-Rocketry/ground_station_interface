#ifndef GRAPHDATA_H
#define GRAPHDATA_H

#include <QObject>
#include <QTimer>
#include <QVariant>
#include <QPointF>
#include <QDebug>
#include <QDateTime>

class GraphData : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QVariantList seriesData READ seriesData NOTIFY seriesDataChanged)

public:
    explicit GraphData(QObject *parent = nullptr);

    QVariantList seriesData() const;

    int yDat();


public slots:
    void updateGraph();
    int xDat();
    int actualTimeUTC();
    int prevTimeUTC();
    int actualTime();



private:
    QTimer *timer;
    QVariantList m_seriesData;  // Holds the graph data points
    qint64 timestamp;

    int counter;

signals:
    void testSignal();
    void seriesDataChanged();
    void newData(const QPointF &point);
};

#endif // GRAPHDATA_H
