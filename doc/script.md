rails g model App name:string sku_number:string language:string version_number:string copyright:string category:integer description:string keywords:string price:decimal status:integer user_id:integer


rails g scaffold block block_type_id:integer user_id:integer






 rails g scaffold block_typ show_name:string name:string
 
 
 
 rails g scaffold navgation app_id:integer nav_type_id:integer status:integer
 
 
rails g scaffold nav_type name:string show_name:string  pic:string



rails g scaffold app_version  app_id:integer version_number:string url:string description:text