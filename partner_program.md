---
# This page uses Hydejack's `about` layout, which shows the primary author's picture and about text at the top.
# You can change it to the regular `page` layout if you want.
layout: page

# The title of the page.
title: Partner Program

# Enable Disqus comments
comments: true

# Write a short (~150 characters) description of each blog post.
# This description is used to preview the page on search engines, social media, etc.
description: >
  Providing business analytics solutions in today’s environment of big and diverse data can be a challenge. Technologies are evolving every day and solutions require computing competencies in addition to traditional DW/BI skills. 
  Hitachi Vantara’s Pentaho platform provides an ideal solution for companies looking to expand their analytics capabilities to include these new big data types and sources, and gain from our experts who have successfully deployed many production solutions for financial, healthcare, advertising, publishing, and technology industries.
  The Partner Workshop is designed to guide Hitachi Vantara Partners in acquiring requisite knowledge and skills in implementing a Pentaho Solution following Professional Services VANTAGE guidelines.

# You can show the description on the page by deleting this line:
hide_description: false

# Setting `menu` will generate an entry in the sidebar.
menu: true
---
![Audience](https://jporeilly.github.io/Pentaho-Training/assets/img/secondhand_lens.png)
  Secondhand Lens (SL) have a number of Camera stores throughout the United Kingdom and United States, which primarily sell secondhand camera lenses. Along with their store sales, they also have a website which customers can purchase these lenses online.

  Up to now, SL’s business analysts and management team had to reach out to the I.T operations team to run queries on the transactional database to generate basic reports. Data Analysts need to be empowered to 'slice and dice' the data on an ad-hoc basis, i.e. by time, geography, or lens type. Managers wish to updated in a timely manner with operational and financial reports. 

  A new approach is required to access their data, and Pentaho Analytics Suite is a perfect solution. The company has provided the following high-level requirements:

  * Users login to a portal and execute / create reports.
  * Data Analysts require an OLAP solution, so they can measure their sales:
      - By sales channel
      - By store
      - By time
      - By city
      - By product
  * Business needs an ad hoc way to generate reports on transaction details.
  * End of month reports should be generated as pdf to be distributed to the management team for monthly strategic meetings, and investors.
  * Sales Manager would like to have a high-level view of the overall sales.

#### Phase I
  * SL can use any security scheme that comes with the product, but all users must have accounts with proper roles and permissions. For future phases,     the platform needs to be integrated with Active Directory.
  * SL’s IT environment, has a development and a production environment.  Code or artifacts need to be promoted from a source control repository.
  * The platform will not have direct network access to the production database. Data file extracts can be placed in any location for the platform to      process them.
  * The data files are extracted several times during day to keep the reporting data as up to date as possible.
  * Development and production environments are on virtual servers running Ubuntu Linux.

#### Phase II
  * SL would like to extend the application to support reports for store managers such that they can only see the performance of their own stores.
  * SL is in the process of implementing a portal for their employees, store personnel and customers which goes live next year. They would like to         know how they can leverage the Pentaho platform for reporting and analytics within their web application. 


### Audience
To complete the Workshop, each of the Partner organizations will require a person with the following role / activities:

![Audience](https://jporeilly.github.io/Pentaho-Training/assets/img/audience.png)



#### Getting Started

[Course Materials](/scripts/partner_program.cmd) - Batch script for GitHub repositories *Requires Git to be installed.