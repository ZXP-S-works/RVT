run()
{
cd ../rvt
python eval.py \
       --model-folder=runs/${date}/${n_demo}/rvt_tasks_${task_name} \
       --eval-datafolder=/home/zxp/projects/C2F_bi_equi/c2f_bi_equi_data/val \
       --tasks=${task_name} \
       --eval-episodes=100 \
       --log-name=${n_demo}'demo' \
       --device=1 \
       --headless \
       --model-name=model_last.pth
}

#task_names=('place_cups' 'light_bulb_in' 'place_wine_at_rack_location' 'put_groceries_in_cupboard'
#'slide_block_to_color_target' 'sweep_to_dustpan_of_size' 'stack_blocks' 'close_jar' 'insert_onto_square_peg'
#'put_money_in_safe' 'meat_off_grill' 'open_drawer' 'reach_and_drag' 'push_buttons' 'stack_cups' 'turn_tap'
#'put_item_in_drawer' 'place_shape_in_shape_sorter')

#task_names=('place_cups' 'light_bulb_in' 'place_wine_at_rack_location' 'put_groceries_in_cupboard')
#task_names=('slide_block_to_color_target' 'sweep_to_dustpan_of_size' 'stack_blocks' 'close_jar' 'insert_onto_square_peg')
#task_names=('put_money_in_safe' 'meat_off_grill' 'open_drawer' 'reach_and_drag')
#task_names=('push_buttons' 'stack_cups' 'turn_tap' 'put_item_in_drawer' 'place_shape_in_shape_sorter')

task_names=('put_money_in_safe')

date=1226
n_demo=10
for task_name in "${task_names[@]}"
  do
    run
    done