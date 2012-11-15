/**
 *
 * File: intParam.h
 * Description: module param with int type
 * Author: Alexander Yarygin <yarygin.alexander@gmail.com>
 *
 **/

#ifndef INTPARAM_H
#define INTPARAM_H

#include "generalParam.h"

namespace Ui {
    class IntParam;
}

class ModuleParamInt : protected ModuleParamGeneral
{
    Q_OBJECT

public:
    ModuleParamInt(ModuleParamRaw* paramRaw, ModuleParam* param);
    virtual ~ModuleParamInt();

private slots:
    void setParamValue(int value);

protected:
    Ui::IntParam *m_ui;
};

#endif // INTPARAM_H