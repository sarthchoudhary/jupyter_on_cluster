while getopts n: flag
do
    case "${flag}" in
        n) node_label=${OPTARG};;
    esac
done
echo "Connecting to narval at node: $node_label";
eval "ssh -L 8080:$node_label.narval.calcul.quebec:8888 sarthak@narval.computecanada.ca"
