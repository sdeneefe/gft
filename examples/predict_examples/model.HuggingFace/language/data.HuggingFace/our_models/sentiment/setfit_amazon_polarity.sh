#!/bin/sh



task=setfit_amazon_polarity

model=$gft_checkpoints/fit_examples/model.HuggingFace/language/data.HuggingFace/sentiment/$task/ckpt/best
gft_predict --model H:$model --data H:$task --eqn 'classify: label ~ text' --split test # > $model/predict.out 2>$model/predict.err

