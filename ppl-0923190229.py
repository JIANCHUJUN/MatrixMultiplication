from airflow.operators.bash_operator import BashOperator
from airflow import DAG

from airflow.contrib.operators.kubernetes_pod_operator import KubernetesPodOperator
from airflow.utils.dates import days_ago

args = {
    "project_id": "ppl-0923190229",
}

dag = DAG(
    "ppl-0923190229",
    default_args=args,
    schedule_interval="@once",
    start_date=days_ago(1),
    description="Created with Elyra 3.0.1 pipeline editor using `ppl.pipeline`.",
    is_paused_upon_creation=False,
)


op_b38b0b30_01da_4679_8a24_ac9d422d838c = KubernetesPodOperator(
    name="task1",
    namespace="default",
    image="continuumio/anaconda3:2020.07",
    cmds=["sh", "-c"],
    arguments=[
        "mkdir -p ./jupyter-work-dir/ && cd ./jupyter-work-dir/ && curl -H 'Cache-Control: no-cache' -L https://raw.githubusercontent.com/elyra-ai/elyra/v3.0.1/elyra/airflow/bootstrapper.py --output bootstrapper.py && curl -H 'Cache-Control: no-cache' -L https://raw.githubusercontent.com/elyra-ai/elyra/v3.0.1/etc/generic/requirements-elyra.txt --output requirements-elyra.txt && python3 -m pip install packaging && python3 -m pip freeze > requirements-current.txt && python3 bootstrapper.py --cos-endpoint http://10.0.2.6:9001 --cos-bucket test --cos-directory 'ppl-0923190229' --cos-dependencies-archive 'task1-b38b0b30-01da-4679-8a24-ac9d422d838c.tar.gz' --file 'task1.ipynb' "
    ],
    task_id="task1",
    env_vars={
        "ELYRA_RUNTIME_ENV": "airflow",
        "AWS_ACCESS_KEY_ID": "minioadmin",
        "AWS_SECRET_ACCESS_KEY": "minioadmin",
        "ELYRA_ENABLE_PIPELINE_INFO": "True",
        "ELYRA_RUN_NAME": "ppl-0923190229-{{ ts_nodash }}",
    },
    in_cluster=True,
    config_file="None",
    dag=dag,
)


op_8f80eb28_375a_4ab6_b6b7_fdd47cde59bd = KubernetesPodOperator(
    name="task2",
    namespace="default",
    image="continuumio/anaconda3:2020.07",
    cmds=["sh", "-c"],
    arguments=[
        "mkdir -p ./jupyter-work-dir/ && cd ./jupyter-work-dir/ && curl -H 'Cache-Control: no-cache' -L https://raw.githubusercontent.com/elyra-ai/elyra/v3.0.1/elyra/airflow/bootstrapper.py --output bootstrapper.py && curl -H 'Cache-Control: no-cache' -L https://raw.githubusercontent.com/elyra-ai/elyra/v3.0.1/etc/generic/requirements-elyra.txt --output requirements-elyra.txt && python3 -m pip install packaging && python3 -m pip freeze > requirements-current.txt && python3 bootstrapper.py --cos-endpoint http://10.0.2.6:9001 --cos-bucket test --cos-directory 'ppl-0923190229' --cos-dependencies-archive 'task2-8f80eb28-375a-4ab6-b6b7-fdd47cde59bd.tar.gz' --file 'task2.ipynb' "
    ],
    task_id="task2",
    env_vars={
        "ELYRA_RUNTIME_ENV": "airflow",
        "AWS_ACCESS_KEY_ID": "minioadmin",
        "AWS_SECRET_ACCESS_KEY": "minioadmin",
        "ELYRA_ENABLE_PIPELINE_INFO": "True",
        "ELYRA_RUN_NAME": "ppl-0923190229-{{ ts_nodash }}",
    },
    in_cluster=True,
    config_file="None",
    dag=dag,
)

op_8f80eb28_375a_4ab6_b6b7_fdd47cde59bd << op_b38b0b30_01da_4679_8a24_ac9d422d838c


op_6f9a12c1_12a6_4b7c_81e5_c299a7005a59 = BashOperator(
    namespace="default",
    task_id="bash1",
    bash_command="echo 314",
    xcom_push=False,
    env="",
    output_encoding="utf-8",
    inputs=[],
    outputs=[],
    in_cluster=True,
    config_file="None",
    dag=dag,
)

op_6f9a12c1_12a6_4b7c_81e5_c299a7005a59 << op_b38b0b30_01da_4679_8a24_ac9d422d838c
