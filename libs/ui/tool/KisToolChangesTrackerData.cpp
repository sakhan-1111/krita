/*
 *  SPDX-FileCopyrightText: 2018 Dmitry Kazakov <dimula73@gmail.com>
 *
 *  SPDX-License-Identifier: GPL-2.0-or-later
 */

#include "KisToolChangesTrackerData.h"
#include <KisStaticRegistrar.h>

KIS_DECLARE_STATIC_REGISTRAR {
    qRegisterMetaType<KisToolChangesTrackerDataSP>("KisToolChangesTrackerDataSP");
}


KisToolChangesTrackerData::~KisToolChangesTrackerData()
{
}

KisToolChangesTrackerData *KisToolChangesTrackerData::clone() const
{
    return new KisToolChangesTrackerData(*this);
}
