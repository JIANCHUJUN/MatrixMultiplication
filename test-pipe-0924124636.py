from airflow.operators.spark_sql_operator import SparkSqlOperator
from airflow.operators.bash_operator import BashOperator
from airflow import DAG

from airflow.contrib.operators.kubernetes_pod_operator import KubernetesPodOperator
from airflow.utils.dates import days_ago

args = {
    "project_id": "test-pipe-0924124636",
}

dag = DAG(
    "test-pipe-0924124636",
    default_args=args,
    schedule_interval="@once",
    start_date=days_ago(1),
    description="Created with Elyra 3.0.1 pipeline editor using `untitled.pipeline`.",
    is_paused_upon_creation=False,
)


op_3ea8e3af_a174_4951_bb19_6edf9b515594 = BashOperator(
    namespace="default",
    task_id="test1",
    bash_command="echo 1",
    xcom_push=False,
    env="",
    output_encoding="utf-8",
    inputs=[],
    outputs=[],
    in_cluster=True,
    config_file="None",
    dag=dag,
)


op_03e928a3_7ee9_4f55_8aef_3e46152ea24a = BashOperator(
    namespace="default",
    task_id="test2",
    xcom_push=False,
    env="",
    output_encoding="utf-8",
    bash_command="sleep 1",
    inputs=[],
    outputs=[],
    in_cluster=True,
    config_file="None",
    dag=dag,
)

op_03e928a3_7ee9_4f55_8aef_3e46152ea24a << op_3ea8e3af_a174_4951_bb19_6edf9b515594


op_791a0f11_7353_4cb4_8f0a_5d9e767e42ef = SparkSqlOperator(
    namespace="default",
    task_id="test",
    sql="select 1",
    conf="",
    conn_id="spark_sql_default",
    total_executor_cores=0,
    executor_cores=0,
    executor_memory="2G",
    keytab="",
    principal="",
    master="yarn",
    name="default-name",
    num_executors=0,
    verbose=True,
    yarn_queue="default",
    inputs=[],
    outputs=[],
    in_cluster=True,
    config_file="None",
    dag=dag,
)

op_791a0f11_7353_4cb4_8f0a_5d9e767e42ef << op_03e928a3_7ee9_4f55_8aef_3e46152ea24a
