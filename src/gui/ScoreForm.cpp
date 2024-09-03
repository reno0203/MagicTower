#include "ScoreForm.h"
#include "ui_ScoreForm.h"

ScoreForm::ScoreForm(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::ScoreForm)
{
    ui->setupUi(this);
}

ScoreForm::~ScoreForm()
{
    delete ui;
}
