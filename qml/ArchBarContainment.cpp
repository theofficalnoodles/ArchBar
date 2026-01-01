#include "ArchBarContainment.h"
#include <KPluginFactory>

ArchBarContainment::ArchBarContainment(QObject *parent, const QVariantList &args)
    : Plasma::Containment(parent, args)
{
}

ArchBarContainment::~ArchBarContainment()
{
}

void ArchBarContainment::init()
{
    Plasma::Containment::init();
    setContainmentType(Plasma::Types::Panel);
}

K_PLUGIN_FACTORY(ArchBarFactory, registerPlugin<ArchBarContainment>();)
#include "ArchBarContainment.moc"
