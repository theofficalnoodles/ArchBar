#ifndef ARCHBARCONTAINMENT_H
#define ARCHBARCONTAINMENT_H

#include <Plasma/Containment>

class ArchBarContainment : public Plasma::Containment
{
    Q_OBJECT
    
public:
    ArchBarContainment(QObject *parent, const QVariantList &args);
    ~ArchBarContainment() override;
    
    void init() override;
};

#endif // ARCHBARCONTAINMENT_H
