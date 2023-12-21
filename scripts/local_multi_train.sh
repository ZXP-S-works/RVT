run()
{
cd ../rvt
python train.py \
      --exp_cfg_path=configs/all.yaml \
      --exp_cfg_opts="tasks ${task_name}" \
      --log-dir=runs/$date/${task_name} \
      --device=0,1
}

#task_names=('place_cups' 'light_bulb_in' 'place_wine_at_rack_location' 'put_groceries_in_cupboard'
#'slide_block_to_color_target' 'sweep_to_dustpan_of_size' 'stack_blocks' 'close_jar' 'insert_onto_square_peg'
#'put_money_in_safe' 'meat_off_grill' 'open_drawer' 'reach_and_drag' 'push_buttons' 'stack_cups' 'turn_tap'
#'put_item_in_drawer' 'place_shape_in_shape_sorter')

#task_names=('place_cups' 'place_wine_at_rack_location' 'sweep_to_dustpan_of_size' 'stack_blocks' 'close_jar'
#'insert_onto_square_peg' 'open_drawer' 'stack_cups')

task_names=('place_cups')

date=1221
for _ in 1
  do
  for task_name in "${task_names[@]}"
    do
      run
      done
    done