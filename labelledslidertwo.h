/** Copyright (c) 2013, Sean Kasun */
#ifndef LABELLEDSLIDERTWO_H_
#define LABELLEDSLIDERTWO_H_

#include <QWidget>
#include <QSlider>
#include <QLabel>
#include <QWheelEvent>
#include <QKeyEvent>
#include "minutor/labelledslider.h"


class LabelledSliderTwo : public QWidget {
  Q_OBJECT

 public:
  explicit LabelledSliderTwo(Qt::Orientation orientation, QWidget *parent = 0);
  int value() const;

 signals:
  void valueChanged(int val);

 public slots:
  void setValue(int val);  // set absolute
  void changeValue(int val);  // change relative

 private slots:
  void intValueChange(int val);

 protected:
  void wheelEvent(QWheelEvent *event);

 private:
  MSlider *slider;
  QLabel *label;
};

#endif  // LABELLEDSLIDERTWO_H_
