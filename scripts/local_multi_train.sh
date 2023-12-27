run()
{
cd ../rvt
python train.py \
      --exp_cfg_path=configs/all.yaml \
      --exp_cfg_opts="tasks ${task_name}" \
      --log-dir=runs/${date}/${n_demo} \
      --device=0,1 \
      --n_demo=${n_demo}
}

task_names=('place_cups' 'light_bulb_in' 'place_wine_at_rack_location' 'put_groceries_in_cupboard'
'slide_block_to_color_target' 'sweep_to_dustpan_of_size' 'stack_blocks' 'close_jar' 'insert_onto_square_peg'
'put_money_in_safe' 'meat_off_grill' 'open_drawer' 'reach_and_drag' 'push_buttons' 'stack_cups' 'turn_tap'
'put_item_in_drawer' 'place_shape_in_shape_sorter')

#task_names=('place_cups')

date=1226
for n_demo in 10
do
  for task_name in "${task_names[@]}"
    do
      run
    done
  done