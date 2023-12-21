run()
{
args="
method.name=${method}
rlbench.tasks=[${task_name}]
rlbench.task_name=${task_name}
rlbench.demo_path=/home/zxp/projects/C2F_bi_equi/c2f_bi_equi_data/val
framework.gpu=1
framework.logdir=/home/zxp/projects/C2F_bi_equi/logs/${date}/${note}
framework.start_seed=0
framework.eval_envs=1
framework.eval_from_eps_number=0
framework.csv_logging=True
framework.tensorboard_logging=True
framework.eval_type='last'
framework.eval_from_eps_number=0
framework.eval_episodes=100
rlbench.headless=True
"

#jn=${run_name}_${gpu}

./local_eval.sh ${args}
}

#task_names=('place_cups' 'stack_cups' 'turn_tap' 'place_wine_at_rack_location')
task_names=('place_wine_at_rack_location')

date=1219
for note in instance_norm
  do
  for task_name in "${task_names[@]}"
    do
      method=C2F_BI_EQU_BC
      run
      done
    done