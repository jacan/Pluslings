#ifndef LOCATION_H
#define LOCATION_H

class Location
{
public:
    Location(double x, double y) : m_locationX(x), m_locationY(y) {}

private:
    double m_locationX;
    double m_locationY;

};

#endif // !LOCATION_H
