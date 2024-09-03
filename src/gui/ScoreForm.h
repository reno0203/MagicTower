#ifndef SCOREFORM_H
#define SCOREFORM_H

#include <QWidget>

namespace Ui {
class ScoreForm;
}

class ScoreForm : public QWidget
{
    Q_OBJECT

public:
    explicit ScoreForm(QWidget *parent = nullptr);
    ~ScoreForm();

private:
    Ui::ScoreForm *ui;
};

#endif // SCOREFORM_H
