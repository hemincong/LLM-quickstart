# DeepSpeed ZeRO-3 模式单 GPU 训练翻译模型（T5-Large）
#deepspeed --num_gpus=1 translation/run_translation.py \
#	--deepspeed config/ds_config_zero3.json \
#	--model_name_or_path t5-3b --per_device_train_batch_size 1 \
#	--output_dir output_dir --overwrite_output_dir \
#	--do_train --max_train_samples 500 --num_train_epochs 1 \
#	--dataset_name wmt16 --dataset_config "ro-en" \
#	--source_lang en --target_lang ro \
#	--source_prefix "translate English to Romanian: " 
	#--per_device_eval_batch_size 4 \

deepspeed --num_gpus=1 translation/run_translation.py \
	--deepspeed config/ds_config_zero3.json \
	--model_name_or_path t5-3b \
	--per_device_train_batch_size 1 \
	--output_dir output_dir --overwrite_output_dir \
	--do_train --max_train_samples 500 --num_train_epochs 1 \
	--dataset_name wmt16 --dataset_config "ro-en" \
	--source_lang en --target_lang ro \
	--source_prefix "translate English to Romanian: "  \
