
# Output - for loop with list

output "for_output_list" {
  description = "for loop with list"
  value = [for instance in aws_instance.mysec2vm: instance.public_dns]
}

#Output - for loop with Map

output "for_output_map" {
    description = "for loop with map"
    value = {for instance in aws_instance.mysec2vm: instance.id => instance.public_dns}  
}

#Output - for loop with Map advanced
output "for_output_map2" {
    description = "for loop with map"
    value = {for c, instance in aws_instance.mysec2vm: c =>instance.public_dns  }  
}
#Output legacy splat operator
/*
output "legacy_splat_instance_publicdns" {
    description = "legacy splat exression"
    value = aws_instance.mysec2vm.*.public_dns
  

}
*/

#output latest generalised splat operator

output "legacy_splat_instance_publicdns" {
    description = "Generalised latest splat expression"
    value = aws_instance.mysec2vm[*].public_dns
  
}

