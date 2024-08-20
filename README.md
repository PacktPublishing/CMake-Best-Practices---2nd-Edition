# CMake Best Practices 

<a href="https://www.packtpub.com/en-us/product/cmake-best-practices-9781835880647?utm_source=github&utm_medium=repository&utm_campaign="><img src="https://content.packt.com/_/image/original/B30947/cover_image_large.jpg" alt="CMake Best Practices" height="256px" align="right"></a>

This is the code repository for [CMake Best Practices](https://www.packtpub.com/en-us/product/cmake-best-practices-9781835880647?utm_source=github&utm_medium=repository&utm_campaign=), published by Packt.

**Discover proven techniques for creating and maintaining programming projects with CMake**

## What is this book about?
Discover the cutting-edge advancements in CMake with the new edition of CMake Best Practices. This book focuses on real-world applications and techniques to leverage CMake, avoiding outdated hacks and overwhelming documentation.
You’ll learn how to use CMake presets for streamlined project configurations and embrace modern package management with Conan 2.0. Covering advanced methods to integrate third-party libraries and optimize cross-platform builds, this updated edition introduces new tools and techniques to enhance software quality, including testing frameworks, fuzzers, and automated documentation generation. Through hands-on examples, you’ll become proficient in structuring complex projects, ensuring that your builds run smoothly across different environments. Whether you’re integrating tools for continuous integration or packaging software for distribution, this book equips you with the skills needed to excel in modern software development.

This book covers the following exciting features:

* Architect a well-structured CMake project
* Modularize and reuse CMake code across projects
* Use the latest CMake features for presets and dependency management
* Integrate tools for static analysis, linting, formatting, and documentation into a CMake project
* Execute hands-on cross-platform builds and seamless toolchain integration
* Implement automated fuzzing techniques to enhance code robustness
* Streamline your CI/CD pipelines with effective CMake configurations
* Craft a well-defined and portable build environment for your project



If you feel this book is for you, get your [copy](https://www.amazon.com/dp/1835880657) today!

<a href="https://www.packtpub.com/?utm_source=github&utm_medium=banner&utm_campaign=GitHubBanner"><img src="https://raw.githubusercontent.com/PacktPublishing/GitHub/master/GitHub.png" 
alt="https://www.packtpub.com/" border="5" /></a>

## Instructions and Navigations
All of the code is organized into folders.

The code will look like the following:
```
project( 
"chapter1" 
VERSION 1.0 
DESCRIPTION "A simple C++ project to demonstrate basic CMake usage" 
LANGUAGES CXX 
)
```

**Following is what you need for this book:**
This book is for software engineers and build system maintainers working with C or C++ on a regular basis and trying to use CMake to better effect for their everyday tasks. Basic C++ and general programming knowledge will help you to better understand the examples covered in the book.

With the following software and hardware list you can run all code files present in the book (Chapter 1-15).
### Software and Hardware List
| Chapter | Software required | OS required |
| -------- | ------------------------------------ | ----------------------------------- |
| 1 | CMake 3.25 or newer | Windows, Mac OS X, and Linux (Any) |
| 1 | GCC,Clang or MSVC | Windows, Mac OS X, and Linux (Any) |
| 1 | Git | Windows, Mac OS X, and Linux (Any) |
| 1 | Lib OpenSSL (Optional for chapter 6) | Windows, Mac OS X, and Linux (Any) |

### Related products
* System Programming Essentials with Go [[Packt]](https://www.packtpub.com/en-us/product/system-programming-essentials-with-go-9781837634132?utm_source=github&utm_medium=repository&utm_campaign=9781839216862) [[Amazon]](https://www.amazon.com/dp/1837634130)

* Refactoring with C++ [[Packt]](https://www.packtpub.com/en-us/product/refactoring-with-c-9781837633777?utm_source=github&utm_medium=repository&utm_campaign=9781803239545) [[Amazon]](https://www.amazon.com/dp/1837633770)


## Get to Know the Author
**Dominik Berner**
is a software engineer, blogger, and conference speaker with 20 years of professional software development under his belt. He codes mainly in C++ and has worked on many software projects, from writing bleeding-edge software for surgical simulators in a startup, to maintaining large legacy platforms for large corporations in the MedTech industry, to creating IoT solutions and writing pilot software for drones. He believes that well-designed and maintained build environments are one of the key elements to enable teams to write software efficiently and excel at creating quality software. When he is not writing code, he occasionally writes articles for his blog or speaks at conferences about software development.

**Mustafa Kemal Gilor**
is an experienced professional working in performance-critical software development for the telecommunication and defense industries and open-source software. His expertise is in high-performance and scalable software design, network technologies, DevOps, and software architecture. His interest in computers emerged very early on in his childhood. He learned programming to hack MMORPG games at around the age of 12, and he has been writing software ever since. His favorite programming language is C++, and he enjoys doing framework design and system programming. He is also a strong advocate of CMake; he has maintained many codebases and ported many legacy projects to CMake throughout his career.
