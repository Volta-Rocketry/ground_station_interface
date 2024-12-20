#include "graphdata.h"

GraphData::GraphData(QObject *parent)
    : QObject{parent}
{
    qDebug() << "Se creo";
    timer = new QTimer(this);

    connect(timer, &QTimer::timeout, this, &GraphData::updateGraph);
    timer->start(100);

    counter = 0;
}

QVariantList GraphData::seriesData() const
{
    return m_seriesData;
}

int GraphData::xDat()
{
    return (rand() % 5) + 1;
}

int GraphData::actualTimeUTC()
{
    //qint64 timestamp = QDateTime::currentMSecsSinceEpoch(); // Current timestamp in milliseconds
    //double doubleTimestamp = static_cast<double>(timestamp);  // Cast to double
    //return doubleTimestamp;
    return counter;
}

int GraphData::prevTimeUTC()
{
    //qint64 timestamp = QDateTime::currentMSecsSinceEpoch(); // Current timestamp in milliseconds
    //double doubleTimestamp = static_cast<double>(timestamp -60000.0);  // Cast to double
    //return doubleTimestamp;  // Subtract 1 minute (60000 ms) as double
    return counter-10;
}
int GraphData::actualTime()
{
    //timestamp = QDateTime::currentMSecsSinceEpoch();
    //return timestamp;
    return counter;
}

void GraphData::updateGraph()
{
    /*
    m_seriesData.clear();
    // Generate or fetch new data points
    float num1 = rand() % 100;
    float num2 = rand() % 100;
    float num3 = rand() % 100;
    float num4 = rand() % 100;

    /*m_seriesData.append(QVariant(num1));
    m_seriesData.append(QVariant(num2));
    m_seriesData.append(QVariant(num3));
    m_seriesData.append(QVariant(num4));

    for (int i = 0; i < 5; ++i) {
        float x = i;
        float y = rand() % 10; // Random value for Y-axis
        //emit newData(QPointF(x, y)); // Emit new data as a QPointF
    }*/

    qDebug() << "Emitting TestSignal...";  // Debug message
    emit testSignal();  // Emit the signal
    counter ++;
}
