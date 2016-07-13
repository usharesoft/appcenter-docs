.. Copyright 2016 FUJITSU LIMITED

.. _scheduler-jobs:

Viewing Current Jobs in the Scheduler
-------------------------------------

To view the scheduler's current queue, log in to the oar scheduler node as root and run the command oarstat:

  .. code-block:: shell

    $ oarstat
    Job id     Name           User           Submission Date     S Queue
    ---------- -------------- -------------- ------------------- - ----------
    5725       4825           glassfish      2012-05-01 18:53:32 R default   

This provides information on the jobs currently being executed as well as the jobs that are scheduled to be executed once a resource is free.  

To view more details of a specific job, log in to the oar scheduler node as root and run the command oarstat and specify the JOB_ID:

  .. code-block:: shell

    $ oarstat --job 5725 –-full
    Job_Id: 5725
        job_array_id = 5725
        job_array_index = 1
        name = 4825
        project = [% 62, Installing distribution]
        owner = glassfish
        state = Running
        wanted_resources = -l "{type = 'default'}/resource_id=1,walltime=2:0:0" 
        types = 
        dependencies = 
        assigned_resources = 51
        assigned_hostnames = vm
        queue = default
        command = /tmp/USER_DATA/FactoryContainer/images/4825/oar/ISO_4825.sh
        launchingDirectory = /tmp/USER_DATA/FactoryContainer/images/4825/oar
        jobType = PASSIVE
        properties = (nature=6) AND desktop_computing = 'NO'
        reservation = None
        walltime = 2:0:0
        submissionTime = 2012-05-01 18:53:32
        startTime = 2012-05-01 18:53:33
        cpuset_name = glassfish_5725
        initial_request = oarsub -d /tmp/USER_DATA/FactoryContainer/images/4825/oar -E oar_image_job4825.stderr -O oar_image_job4825.stdout -n 4825 --project null --checkpoint=1 --signal=15 -p nature=6 /tmp/USER_DATA/FactoryContainer/images/4825/oar/ISO_4825.sh
        message = FIFO scheduling OK
        scheduledStart = 2012-05-01 18:53:33
        resubmit_job_id = 0
        events = 

.. _job-logs:

Viewing the Logs of a Job
-------------------------

The main logs of OAR are stored in: /var/log/oar.log
Each job launched on the OAR cluster, whether it be an image generation or publish to a cloud, logs are stored for the job.  These include all the traces and error information during the execution of the job.  Each job has a unique ID provided to it, which can be recuperated using the “oarstat” command as shown in :ref:`scheduler-jobs`.

For jobs that generate an image, the log files are stored under: cd <user data mount point>/FactoryContainer/images/<job_name>

For example:

.. code-block:: shell

  $ oarstat
  Job id     Name           User           Submission Date     S Queue
  ---------- -------------- -------------- ------------------- - ----------
  5725       4825           glassfish      2012-05-01 18:53:32 R default 

The directory will be:

.. code-block:: shell

  $ cd <user data mount point>/FactoryContainer/images/4825

Logs for jobs that publish an image to a specific cloud are stored in a sub-directory of the generated image directory.  So for example if a user generates an Amazon image, then publishes the machine image to Amazon, the directory structure created is:

.. code-block:: none

  /<user data mount point>/FactoryContainer/images
                  |
                  |
                  |-- generated image logs dir --> 4825  
                                                |
                                                |
                                                |-- published image logs dir --> publish_<job_name>

To view the logs of a job, log in to the oar scheduler node as root::

  $ cd /<user data mount point>/FactoryContainer/images/<job_name>/oar

so for example

.. code-block:: shell

  $ cd /tmp/USER_DATA/FactoryContainer/images/4825/oar
  $ ls -al
  total 376
  drwxr-xr-x 2 glassfish glassfish   4096 Apr 30 18:21 .
  drwxr-xr-x 6 glassfish glassfish   4096 Apr 30 18:22 ..
  -rwxr-xr-x 1 glassfish glassfish    980 Apr 30 18:15 ISO_4825.sh
  -rwxr-xr-x 1 glassfish glassfish   1088 Apr 30 18:15 cmd_4825.sh
  -rwxrwxrwx 1 glassfish glassfish    300 Apr 30 18:18 oar_image_job4825.stderr
  -rwxrwxrwx 1 glassfish glassfish 360500 Apr 30 18:21 oar_image_job4825.stdout

To check for suspicious jobs you can run::
  
  $ oarnodes | grep -i suspected

