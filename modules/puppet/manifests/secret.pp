class puppet::secret($puppetdir) {
  
  $message = secret("${puppetdir}/puppet/modules/puppet/files/secret_message.gpg")

  notify {$message:}
}