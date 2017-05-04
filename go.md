Go go

- kr | SSH using a key stored in Kryptonite. https://krypt.co https://github.com/KryptCo/kr

Demo: https://krypt.co/static/demo_final.mp4
![image](https://cloud.githubusercontent.com/assets/263237/25692258/dffc7b58-30a9-11e7-8afa-72079e386498.png)

- A lightweight, open source, tracking-free comment engine alternative to Disqus https://github.com/adtac/commento

![](https://cloud.githubusercontent.com/assets/7521600/25356132/d00013e0-2956-11e7-8dba-772a8040ae0c.png)

- A new object oriented language written in Go aim at developing microservice efficiently.  https://github.com/rooby-lang/rooby

```ruby
class User
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end

  def say_hi(user)
    puts(@name + " says hi to " + user.name)
  end

  def self.sum_age(user1, user2)
    user1.age + user2.age
  end
end

stan = User.new("Stan", 22)
john = User.new("John", 40)
puts(User.sum_age(stan, john)) #=> 62
stan.say_hi(john) #=> Stan says hi to John
```

- https://awesome-go.com/

- http://www.cihanozhan.com/go-programlama-diline-genel-bakis/

- Go build system with file watchers, live reload and output streams. Run, build and watch file changes with custom paths https://github.com/tockins/realize

- Questions/answers and multiple choice by command line in Go https://github.com/tockins/interact

```go
package main

import (
	i "github.com/tockins/interact"
)

func main() {
	i.Run(&i.Interact{
		Questions: []*i.Question{
			{
				Quest: i.Quest{
					Msg:      "Would you like some coffee?",
				},
				Action: func(c i.Context) interface{} {
					val, err := c.Ans().Bool()
					if err != nil{
					    return err
					}
					fmt.Println(val)
					return nil
				},
			},
		},
	})
}
```

- Golang library for fuzzing matching within a set of strings https://github.com/schollz/closestmatch

- Golang package that generates clean, responsive HTML e-mails for sending transactional mail https://github.com/matcornic/hermes
![image](https://cloud.githubusercontent.com/assets/263237/24771475/65a7766c-1b16-11e7-9a9f-7e6e70aad960.png)

- Top-like interface for container metrics https://bcicen.github.io/ctop/
> ctop provides a concise and condensed overview of real-time metrics for multiple containers:
![](https://github.com/bcicen/ctop/raw/master/_docs/img/grid.gif)

- IRC, Slack and Telegram bot written in go: https://github.com/go-chat-bot/bot
![](https://cloud.githubusercontent.com/assets/1084729/12377689/5bf7d5f2-bd0d-11e5-87d9-525481f01c3a.gif)
- Curated list of Go design patterns, recipes and idioms http://tmrts.com/go-patterns https://github.com/tmrts/go-patterns
- A Commander for modern Go CLI interactions https://github.com/spf13/cobra
- A Fast and Flexible Static Site Generator built with love in GoLang http://gohugo.io https://github.com/spf13/hugo
- https://github.com/Sirupsen/awesome-go
- Seesaw v2 is a Linux Virtual Server (LVS) based load balancing platform: <https://github.com/google/seesaw>
- Based on "How to Write a Spelling Corrector": <https://github.com/montanaflynn/toy-spelling-corrector>, <http://norvig.com/spell-correct.html>
- Minimal AWS Lambda function manager with Go support: <https://github.com/apex/apex>
- Go Relational Persistence - an ORM-ish library for Go: <https://github.com/go-gorp/gorp>
- A lightweight MVC framework for Go(Golang): <https://github.com/gernest/utron>
- Echo is a fast ￼ and unfancy micro web framework for Go. <https://github.com/labstack/echo>
- Gryffin is a large scale web security scanning platform: <https://github.com/yahoo/gryffin>
- uilive is a go library for updating terminal output in realtime: <https://github.com/gosuri/uilive>
- Render is a package that provides functionality for easily rendering JSON, XML, text, binary data, and HTML templates: <https://github.com/unrolled/render>
- golang build tool in the spirt of rake, gulp: <https://github.com/go-godo/godo>
- A command-line fuzzy finder written in Go: <https://github.com/jondot/fzf>
- A visual interface to work with runtime profiling data for Go: <https://github.com/rakyll/gom>
- Minimalist Go library aimed at creating Console User Interfaces: <https://github.com/jroimartin/gocui>
- HTTP(S) load generator, ApacheBench (ab) replacement, written in Go: <https://github.com/rakyll/boom>
- https://github.com/gillesdemey/go-dicom
- Vulnerability scanner for Linux, agentless, written in golang. https://github.com/future-architect/vuls

Log,
- Structured, pluggable logging for Go: <https://github.com/Sirupsen/logrus>
- Package log implements a simple structured logging API inspired by Logrus, designed with centralization in mind. Read more on Medium: <https://github.com/apex/log>, [Medium: tanıtım](https://medium.com/@tjholowaychuk/apex-log-e8d9627f4a9a#.4bpbq5hko)

# Books
- Kitaplar: <https://github.com/adonovan/GoBooks>
- Example programs from "The Go Programming Language" <http://www.gopl.io>: <https://github.com/adonovan/gopl.io>
