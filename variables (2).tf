variable "rgname"{
  description="enter the name of resourcegroup in which VNET to be deployed"
}

variable "vnetname"{
    description = "Enter vnet name"
}
variable "subnetname"{
    description = "Enter subnet name"
}

variable "location" {
    type = string
    description = "Azure location of terraform server environment"
    default = "westus2"

}

variable "addressspace" { 
    type = list
    description = "Address space for Virtual Network"
    
}
#ip ranges for subnet
variable "subnetsaddressspace" { 
    type = list
    description = "Address space for subnets"
   
}