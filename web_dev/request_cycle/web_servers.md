# What are some of the key design philosophies of the Linux operating system?
  * small is beautiful
  * each program does one thing well
  * prototype as soon as possible
  * choose portability over efficiency
  * store data in flat text files
  * use software leverage
  * use shell scripts to increase leverage and portability
  * avoid captive user interfaces
  * make every program a filter

# In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
  * A VPS is a virtual server that is a piece of a physical server. A physical server is partitioned into its own virtual server. The person who has a virtual server cannot access the other partitioned off virtual servers that are on that same physical server. It is still a dedicated server.

  * Advantages:
    * cheaper than a physical server
    * can customize it so you don't have to get options you don't need
    * easily scalable
    * more control than if you used shared hosting (eg: can use scripts you might not be able to in the shared space)

# Why is it considered a bad idea to run programs as the root user on a Linux system?
  * allows you to make changes that may impact everything on the system in a negative way (rm -rf, malicious code, accidentally everything in the system)
