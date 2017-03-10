# LSIM

- Easily and efficiently make your ActiveRecord models support hierarchies: https://github.com/mceachen/closure_tree

```ruby
grandparent = Tag.create(name: 'Grandparent')
parent = grandparent.children.create(name: 'Parent')
child2 = Tag.new(name: 'Second Child')
parent.children << child2
d = Tag.find_or_create_by_path %w[a b c d]
h = Tag.find_or_create_by_path %w[e f g h]
e = h.root
d.add_child(e) # "d.children << e" would work too, of course
h.ancestry_path
=> ["a", "b", "c", "d", "e", "f", "g", "h"]
```

- Editing, New, Drag-drop: https://github.com/dabeng/OrgChart

```html
<!-- wrap the text node with <a href="#"> , <span>, blabla is also OK. Note:text node must immediately follow the <li> tag, with no intervening characters of any kind.  -->
<ul id="ul-data">
  <li>Lao Lao
    <ul>
      <li>Bo Miao</li>
      <li>Su Miao
        <ul>
          <li>Tie Hua</li>
          <li>Hei Hei
            <ul>
              <li>Pang Pang</li>
              <li>Xiang Xiang</li>
            </ul>
          </li>
        </ul>
      </li>
    </ul>
  </li>
</ul>
```

![](https://camo.githubusercontent.com/fdda9a3b48489718c37d4f65b8d2da9729d483c0/687474703a2f2f646162656e672e6769746875622e696f2f4f726743686172742f647261672d64726f702f7265636f726465722e676966)

![](https://cloud.githubusercontent.com/assets/263237/23700574/e2499182-03fb-11e7-823a-ff3749bae1f6.png)

- Flowchart: https://github.com/codecapers/AngularJS-FlowChart
- Surveyor is a developer tool to deliver surveys in Rails applications: <https://github.com/NUBIC/surveyor>
- Tree: <https://github.com/mceachen/closure_tree>
- Sirius: Speech and Vision Based Intelligent Personal Assistant https://github.com/jhauswald/sirius
- Simple application for storing interview questions: <https://github.com/dropbox/questions>
