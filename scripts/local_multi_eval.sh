run()
{
cd ../rvt
python eval.py \
       --model-folder=runs/${date}/'rvt_tasks_'${task_name} \
       --eval-datafolder=/home/zxp/projects/C2F_bi_equi/c2f_bi_equi_data/val \
       --tasks=${task_name} \
       --eval-episodes=${eval_episodes} \
       --log-name=${eval_episodes} \
       --device=1 \
       --headless \
       --model-name=model_last.pth
}

#task_names=('place_cups' 'stack_cups' 'turn_tap' 'place_wine_at_rack_location')
task_names=('place_cups' 'stack_cups')

date=1222
for eval_episodes in 2
  do
  for task_name in "${task_names[@]}"
    do
      run
      done
    done