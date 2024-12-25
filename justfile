space size name:
    sudo truncate -s {{size}}G /mnt/e/{{name}}.img
    sudo mkfs.ext4 /mnt/e/{{name}}.img
    sudo mkdir ~/workspace/{{name}}
    sudo mount -o loop /mnt/e/{{name}}.img ~/workspace/{{name}}
    echo "    sudo mount -o loop /mnt/e/{{name}}.img ~/workspace/{{name}}" >> ./justfile


mount:
    sudo mount -o loop /mnt/e/c.img ~/workspace/c

