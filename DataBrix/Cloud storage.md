## Cloud Storage:

### Data Storage Methodologies:

**1.    Object Storage:** Object storage or Object based storage is a data storage methodology where data files are broken into multiple little pieces called objects and are spread across multiple network systems. Instead of using a hierarchical format of directory trees object storage store data in a flat structure, such that every object can be accessed using every object's unique path which generally exists in the form [```dbfs://file-location/bucket-name/object_id ```]

-   ID: Every data object has a unique ID that's part of  it's path.
-   Metadata: Metadata contains further information about the data like data type, owner info etc.
-   Attibutes: Attributes are similar to metadata in that they contain important information about the object essential for maintaining data integrity and security. Key attributes of a data object can be User priviledges, constraints etc.

**Advantages:** Data Objects ensure Scalability, Data Security, Replication and cost savings.
<p align="center">        
<img src = "image.png" alt = "Object in Object Storage models" width= "300px" height= "150px">
</p>

**2.    File Storage:**  
File Storage is often referred as file system or file-level storage, in the modern context file storage have been referred as NAS (Network attached storage), they allow users/applications to access data across various networks through directory trees, folders and individual files. A file storage behaves as a physical storage, however a NAS also called a NOS (Network operating system) manages access and read-write operations to it.  
File storage can be very easily configurable but access to it is constrained by a single path making it less performant as compared to Object or block storage. File storage depends on the storage system employed such New technologies file system (NTFS) for windows or Network file system (NFS) for linux.

**3.    Block Storage:** 

Block storage allow creation of raw storage volumes that any virtual operating system connected to the network can access them, block storage act as multiple hard disks connected to the network and can be utilised for multiple use cases such file storage, database storage and for creating Virtual machine file system (VMFS) volumes.

-   SANs
-   RAID Arrays

### Azure Blob Storage:

Azure Blob storage a Object based cloud storage platform offered by Microsoft that can be utilized by enterprises and individuals to store large amount of unstructured data to the cloud. 

**Blob Storage Resources:**  
Azure blob storage offers three type of resources:
1.  Storage Account
2.  A Container in the storage account
3.  A blob in the container

<p align="center">
<img alt = "Azure Blob storage" src="image-1.png">
</p>

1.  **Storage Account:** A Storage account in Azure offers a unique namespace for your data in azure. Every object stored in azure can be accessed by using the unique account name. A combination of account name and storage endpoints forms the base address of stored object.

2.  **Containers:** A container orgainzes a set of blob storages similar to a directory for folders. A storage account can store a number of containers and a container can store a number of blobs.  
A container name must be a valid DNS address as it forms part of the URI (Uniform Resource Idenfier) of the object (Container, blob or file) that needs to be accessed.

3.  **Blobs (binary large objects):** Blobs are the smallest unit of the azure object storage model. They can further contain files but 

### Azure data lake gen2:

Azure data lake gen2 is a file-based storage layer built on top of Azure blob storage that allows enterprises to store structured, semi-structured and unstructured data and also perform big data workloads over their data at scale.

Azure data lake is set of capabilities that augment big data analytics like:
-   compatibility with Hadoob distributed file system (HDFS)   
-   Hierarchical namespaces
-   
-   
-   


### Databricks Datalake:

### Unity Catalog:

