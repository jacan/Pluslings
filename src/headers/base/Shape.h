#ifndef SHAPE_H
#define SHAPE_H

#include "Location.h"

class Shape
{
public:
    // Required
    Shape(Location location) : m_location(location) {}

	
	
    virtual bool Intersects(Shape* otherShaoe) = 0;
    virtual long Area() = 0;

    virtual Location GetLocation() = 0;

private:
    Location m_location;
};
#endif // ! SHAPE_H


