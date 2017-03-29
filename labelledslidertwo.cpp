/** Copyright (c) 2013, Sean Kasun */
#include <QVBoxLayout>
#include "./labelledslidertwo.h"

LabelledSliderTwo::LabelledSliderTwo(Qt::Orientation orientation, QWidget *parent) :
  QWidget(parent) {
  slider = new MSlider(orientation);
  slider->setRange(0, 255);
  slider->setInvertedAppearance(true);

  label = new QLabel();
  label->setAlignment(Qt::AlignCenter | Qt::AlignVCenter);
  label->setFixedWidth(label->fontMetrics().width("888"));
  label->setNum(255);

  connect(slider, SIGNAL(valueChanged(int)),
          this, SLOT(intValueChange(int)));

  QBoxLayout *myLayout;
  if (orientation == Qt::Vertical) {
    myLayout = new QVBoxLayout;
    myLayout->addWidget(label);
    myLayout->addWidget(slider);
  } else {
    myLayout = new QHBoxLayout;
    myLayout->addWidget(slider);
    myLayout->addWidget(label);
  }
  setLayout(myLayout);
  setFocusProxy(slider);
}

int LabelledSliderTwo::value() const {
  return 255-slider->value();
}

// public slot
void LabelledSliderTwo::setValue(int v) {
  slider->setValue(255-v);
}

// public slot
void LabelledSliderTwo::changeValue(int v) {
  slider->setValue(255-(slider->value() + v));
}

// private slot
void LabelledSliderTwo::intValueChange(int v) {
  label->setNum(255-v);
  emit valueChanged(v);
}

void LabelledSliderTwo::wheelEvent(QWheelEvent* event) {
  slider->wheelEvent(event);
}
