from airflow.operators.bash_operator import BashOperator
from airflow import DAG

from airflow.contrib.operators.kubernetes_pod_operator import KubernetesPodOperator
from airflow.utils.dates import days_ago

args = {
    "project_id": "ppl-0924141931",
}

dag = DAG(
    "ppl-0924141931",
    default_args=args,
    schedule_interval="@once",
    start_date=days_ago(1),
    description="Created with Elyra 3.0.1 pipeline editor using `ppl.pipeline`.",
    is_paused_upon_creation=False,
)


op_842c49e3_a2e0_4080_9ffa_845b3c04d5a1 = BashOperator(
    namespace="default",
    task_id="test0",
    bash_command='echo "haha123"',
    xcom_push=False,
    env="",
    output_encoding="utf-8",
    inputs=[],
    outputs=[],
    in_cluster=True,
    config_file="None",
    dag=dag,
)
