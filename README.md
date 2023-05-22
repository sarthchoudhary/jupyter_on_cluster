This project allows one to start a jupyter server (via slurm) on a remote machine and access it from local machine.
In order to use the full feature of this project, add the following lines to .bash_aliases:
alias jl='jupyter lab --no-browser'
alias jog='pyn; bash ~/my_projects/jupyter_on_cluster/jupyter_on_gpu.sh' --> This needs to be on the remote server
alias joc='bash ~/my_projects/jupyter_on_cluster/ssh_to_narval.sh -n' --> This needs to be on the local machine.

steps to follow:
1.) Run jupyter_on_gpu.sh to request GPU resources and launch a jupyter server on cluster. Alternatively, use 'jog' alias.
2.) Run ssh_narval.sh for connecting local machine to the node assigned on the cluster. This script expectts a node-name as an argument.
    Alternatively, use 'joc' alias in this manner: joc <node_assigned> 

