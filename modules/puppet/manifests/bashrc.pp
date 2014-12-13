define puppet::bashrc ($content = '', $order = '10', $target = '/home/git/.bashrc'){
  
  concat::fragment{$name:
    target  => $target,
    content => $content,
    order   => $order,
  }

}